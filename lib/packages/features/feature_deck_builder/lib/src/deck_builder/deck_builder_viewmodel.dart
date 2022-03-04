import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smart_duel_disk/generated/locale_keys.g.dart';
import 'package:smart_duel_disk/packages/core/core_data_manager/lib/core_data_manager_interface.dart';
import 'package:smart_duel_disk/packages/core/core_general/lib/core_general.dart';
import 'package:smart_duel_disk/packages/core/core_localization/lib/core_localization.dart';
import 'package:smart_duel_disk/packages/core/core_logger/lib/core_logger.dart';
import 'package:smart_duel_disk/packages/core/core_messaging/lib/core_messaging.dart';
import 'package:smart_duel_disk/packages/core/core_navigation/lib/core_navigation.dart';

import 'models/deck_builder_section.dart';
import 'models/deck_builder_state.dart';

@Injectable()
class DeckBuilderViewModel extends BaseViewModel {
  static const _tag = 'DeckBuilderViewModel';

  final PreBuiltDeck? _preBuiltDeck;
  final UserDeck? _userDeck;
  final AppRouter _router;
  final DataManager _dataManager;
  final StringProvider _stringProvider;
  final DialogService _dialogService;
  final SnackBarService _snackBarService;

  final _deckBuilderState = BehaviorSubject<DeckBuilderState>.seeded(const DeckBuilderLoading());
  Stream<DeckBuilderState> get deckBuilderState => _deckBuilderState.stream;

  final _speedDuelCards = BehaviorSubject<Iterable<YugiohCard>>();
  final _preBuiltDeckCardIds = BehaviorSubject<Iterable<int>>();
  final _textFilter = BehaviorSubject<String>.seeded('');

  late StreamSubscription<DeckBuilderState>? _filteredCardsSubscription;

  String? get deckTitle {
    if (_preBuiltDeck != null) {
      return _stringProvider.getString(_preBuiltDeck!.titleId);
    }

    if (_userDeck != null) {
      return _userDeck!.name;
    }

    return null;
  }

  bool get isPersonalDeck => _userDeck != null;

  DeckBuilderViewModel(
    Logger logger,
    @factoryParam this._preBuiltDeck,
    @factoryParam this._userDeck,
    this._router,
    this._dataManager,
    this._stringProvider,
    this._dialogService,
    this._snackBarService,
  ) : super(logger);

  Future<void> init() async {
    logger.info(_tag, 'init()');

    _initFilteredCardsSubscription();
    await _fetchData();
  }

  //region Data state subscription

  void _initFilteredCardsSubscription() {
    logger.verbose(_tag, '_initFilteredCardsSubscription()');

    _filteredCardsSubscription = Rx.combineLatest3(_speedDuelCards, _preBuiltDeckCardIds, _textFilter, (
      Iterable<YugiohCard> cards,
      Iterable<int> cardIds,
      String filterValue,
    ) async {
      final cardCopies = <CardCopy>[];
      for (final card in cards) {
        final image = await _dataManager.getCardImageFile(card);
        cardCopies.add(CardCopy(card, image));
      }

      cardCopies.sort((cc1, cc2) => cc1.card.name.compareTo(cc2.card.name));

      if (cardIds.isNotEmpty) {
        return _createDeckState(cardIds, cardCopies);
      }

      if (_userDeck != null && _userDeck!.cardIds.isNotEmpty) {
        return _createDeckState(_userDeck!.cardIds, cardCopies);
      }

      if (filterValue.isNullOrEmpty) {
        return DeckBuilderFiltered(cardCopies);
      }

      return _createFilteredCardsState(cardCopies, filterValue);
    }).asyncMap((event) => event).listen(_deckBuilderState.safeAdd);
  }

  DeckBuilderState _createDeckState(Iterable<int> cardIds, Iterable<CardCopy> cards) {
    logger.verbose(_tag, '_createPreBuiltDeckState()');

    final cardCopies = cardIds.map((id) => cards.firstWhere((cc) => cc.card.id == id));

    final sections = [
      SkillCardSection(cards: cardCopies.where((cc) => cc.card.type == CardType.skillCard)),
      MonsterCardsSection(cards: cardCopies.where((cc) => cc.card.isMonster && !cc.card.belongsInExtraDeck)),
      SpellCardsSection(cards: cardCopies.where((cc) => cc.card.type == CardType.spellCard)),
      TrapCardsSection(cards: cardCopies.where((cc) => cc.card.type == CardType.trapCard)),
      ExtraDeckSection(cards: cardCopies.where((cc) => cc.card.belongsInExtraDeck))
    ]..removeWhere((section) => section.cards.isEmpty);

    return DeckBuilderPreBuilt(sections);
  }

  DeckBuilderState _createFilteredCardsState(Iterable<CardCopy> cards, String filterValue) {
    logger.verbose(_tag, '_createFilteredCardsState()');

    final textFilter = filterValue.toLowerCase();
    final filteredCards = cards.where(
      (cc) =>
          cc.card.name.toLowerCase().contains(textFilter) ||
          (cc.card.archetype?.toLowerCase().contains(textFilter) ?? false),
    );

    if (filteredCards.isEmpty) {
      return const DeckBuilderNoData();
    }

    return filteredCards.isEmpty ? const DeckBuilderNoData() : DeckBuilderFiltered(filteredCards);
  }

  //endregion

  //region Data fetching

  Future<void> _fetchData() async {
    logger.verbose(_tag, '_fetchData()');

    _deckBuilderState.safeAdd(const DeckBuilderLoading());

    try {
      if (!_speedDuelCards.hasValue) {
        await _fetchSpeedDuelCards();
      }

      if (!_preBuiltDeckCardIds.hasValue) {
        await _fetchPreBuiltDeckCardIds();
      }
    } catch (exception, stackTrace) {
      logger.error(_tag, 'An error occurred while fetching the data.', exception, stackTrace);
      _deckBuilderState.safeAdd(const DeckBuilderError());
    }
  }

  Future<void> _fetchSpeedDuelCards() async {
    logger.verbose(_tag, '_fetchSpeedDuelCards()');

    final speedDuelCards = await _dataManager.getSpeedDuelCards();
    if (speedDuelCards.isNullOrEmpty) {
      throw Exception('No speed duel cards');
    }

    _speedDuelCards.safeAdd(speedDuelCards);
  }

  Future<void> _fetchPreBuiltDeckCardIds() async {
    logger.verbose(_tag, '_fetchPreBuiltDeckCardIds()');

    if (_preBuiltDeck == null) {
      _preBuiltDeckCardIds.safeAdd(<int>[]);
      return;
    }

    final preBuiltDeckCardIds = await _dataManager.getPreBuiltDeckCardIds(_preBuiltDeck!);
    _preBuiltDeckCardIds.safeAdd(preBuiltDeckCardIds);
  }

  String getCardTag(CardCopy cardCopy, int index) => '${cardCopy.card.id} - $index';

  //region Actions

  Future<void> onCardPressed(CardCopy cardCopy, int index) async {
    logger.info(_tag, 'onCardPressed(card: ${cardCopy.card.id}, index: $index)');

    await _router.showYugiohCardDetail(cardCopy, getCardTag(cardCopy, index));
  }

  Future<void> onRetryPressed() async {
    logger.info(_tag, 'onRetryPressed()');

    await _fetchData();
  }

  void onTextFilterChanged(String value) {
    logger.info(_tag, 'onTextFilterChanged($value)');

    _textFilter.safeAdd(value);
  }

  void onClearTextFilterPressed() {
    logger.info(_tag, 'onClearTextFilterPressed()');

    _textFilter.safeAdd('');
  }

  Future<void> onDeleteDeckPressed() async {
    final deleteDeck = await _dialogService.showAlertDialog(
      DialogConfig(
        title: 'Delete deck',
        description: 'Are you sure you want to delete this deck?',
        positiveButtonText: _stringProvider.getString(LocaleKeys.general_dialog_yes),
        negativeButtonText: _stringProvider.getString(LocaleKeys.general_dialog_no),
      ),
    );

    if (deleteDeck == null || !deleteDeck) {
      return;
    }

    try {
      await _dataManager.deleteDeck(_userDeck!);
      _snackBarService.showSnackBar('Deck "${_userDeck!.name}" was deleted successfully!');
      await _router.closeScreen();
    } catch (e, stackTrace) {
      logger.error(_tag, 'An error occurred while trying to delete deck', e, stackTrace);
      _snackBarService.showSnackBar('An error occurred while trying to delete deck "${_userDeck!.name}".');
    }
  }

  //endregion

  //region Clean-up

  @override
  void dispose() {
    logger.info(_tag, 'dispose()');

    _filteredCardsSubscription?.cancel();
    _filteredCardsSubscription = null;

    _deckBuilderState.close();
    _speedDuelCards.close();
    _preBuiltDeckCardIds.close();
    _textFilter.close();

    super.dispose();
  }

  //endregion
}
