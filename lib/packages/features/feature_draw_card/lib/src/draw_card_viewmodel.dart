import 'package:flutter/foundation.dart';
import 'package:smart_duel_disk/packages/core/core_general/lib/core_general.dart';
import 'package:smart_duel_disk/packages/core/core_logger/lib/core_logger.dart';
import 'package:smart_duel_disk/packages/core/core_navigation/lib/core_navigation.dart';

class DrawCardViewModel extends BaseViewModel {
  static const _tag = 'DrawCardViewModel';

  final VoidCallback _cardDrawnCallback;
  final AppRouter _router;

  DrawCardViewModel(
    this._cardDrawnCallback,
    this._router,
    Logger logger,
  ) : super(logger);

  Future<void> onCardDrawn() async {
    logger.info(_tag, 'onCardDrawn()');

    _cardDrawnCallback();
    await _router.closeScreen();
  }
}
