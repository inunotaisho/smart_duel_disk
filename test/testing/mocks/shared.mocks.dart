// Mocks generated by Mockito 5.0.17 from annotations
// in smart_duel_disk/test/testing/mocks/shared.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;
import 'dart:io' as _i6;
import 'dart:ui' as _i5;

import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/material.dart' as _i16;
import 'package:flutter/services.dart' as _i24;
import 'package:mockito/mockito.dart' as _i1;
import 'package:smart_duel_disk/packages/core/authentication/authentication.dart'
    as _i27;
import 'package:smart_duel_disk/packages/core/core_config/lib/core_config.dart'
    as _i18;
import 'package:smart_duel_disk/packages/core/core_data_manager/lib/core_data_manager_interface.dart'
    as _i2;
import 'package:smart_duel_disk/packages/core/core_file_manager/lib/src/file_manager.dart'
    as _i26;
import 'package:smart_duel_disk/packages/core/core_localization/lib/core_localization.dart'
    as _i22;
import 'package:smart_duel_disk/packages/core/core_logger/lib/core_logger.dart'
    as _i7;
import 'package:smart_duel_disk/packages/core/core_messaging/lib/src/snack_bar/snack_bar_service.dart'
    as _i15;
import 'package:smart_duel_disk/packages/core/core_navigation/lib/core_navigation.dart'
    as _i8;
import 'package:smart_duel_disk/packages/core/core_smart_duel_server/lib/core_smart_duel_server.dart'
    as _i9;
import 'package:smart_duel_disk/packages/core/core_storage/lib/core_storage.dart'
    as _i19;
import 'package:smart_duel_disk/packages/features/feature_home/lib/feature_home.dart'
    as _i14;
import 'package:smart_duel_disk/packages/features/feature_home/lib/src/duel/mixins/duel_form_validators.dart'
    as _i13;
import 'package:smart_duel_disk/packages/features/feature_home/lib/src/home/models/home_tab.dart'
    as _i21;
import 'package:smart_duel_disk/packages/features/feature_home/lib/src/home/usecases/get_home_tabs_use_case.dart'
    as _i20;
import 'package:smart_duel_disk/packages/features/feature_speed_duel/lib/feature_speed_duel.dart'
    as _i10;
import 'package:smart_duel_disk/packages/features/feature_speed_duel/lib/src/models/play_card.dart'
    as _i11;
import 'package:smart_duel_disk/packages/features/feature_speed_duel/lib/src/models/zone.dart'
    as _i12;
import 'package:smart_duel_disk/packages/wrappers/wrapper_connectivity/lib/src/connectivity_provider.dart'
    as _i25;
import 'package:smart_duel_disk/packages/wrappers/wrapper_shared_preferences/lib/wrapper_shared_preferences.dart'
    as _i17;
import 'package:smart_duel_disk/packages/wrappers/wrapper_system_chrome/lib/src/system_chrome_provider.dart'
    as _i23;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeYugiohCard_0 extends _i1.Fake implements _i2.YugiohCard {}

class _FakeStreamTransformer_1<S, T> extends _i1.Fake
    implements _i3.StreamTransformer<S, T> {}

class _FakeWidget_2 extends _i1.Fake implements _i4.Widget {
  @override
  String toString({_i4.DiagnosticLevel? minLevel = _i4.DiagnosticLevel.info}) =>
      super.toString();
}

class _FakeGlobalKey_3<T extends _i4.State<_i4.StatefulWidget>> extends _i1.Fake
    implements _i4.GlobalKey<T> {}

class _FakeLocale_4 extends _i1.Fake implements _i5.Locale {}

class _FakeUri_5 extends _i1.Fake implements Uri {}

class _FakeDirectory_6 extends _i1.Fake implements _i6.Directory {}

class _FakeFileStat_7 extends _i1.Fake implements _i6.FileStat {}

class _FakeFileSystemEntity_8 extends _i1.Fake implements _i6.FileSystemEntity {
}

/// A class which mocks [Logger].
///
/// See the documentation for Mockito's code generation for more information.
class MockLogger extends _i1.Mock implements _i7.Logger {
  MockLogger() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void print(String? message) =>
      super.noSuchMethod(Invocation.method(#print, [message]),
          returnValueForMissingStub: null);
  @override
  void verbose(String? tag, String? message) =>
      super.noSuchMethod(Invocation.method(#verbose, [tag, message]),
          returnValueForMissingStub: null);
  @override
  void debug(String? tag, String? message) =>
      super.noSuchMethod(Invocation.method(#debug, [tag, message]),
          returnValueForMissingStub: null);
  @override
  void info(String? tag, String? message) =>
      super.noSuchMethod(Invocation.method(#info, [tag, message]),
          returnValueForMissingStub: null);
  @override
  void warning(String? tag, String? message) =>
      super.noSuchMethod(Invocation.method(#warning, [tag, message]),
          returnValueForMissingStub: null);
  @override
  void error(String? tag, String? message, dynamic exception,
          StackTrace? stackTrace) =>
      super.noSuchMethod(
          Invocation.method(#error, [tag, message, exception, stackTrace]),
          returnValueForMissingStub: null);
}

/// A class which mocks [DialogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDialogService extends _i1.Mock implements _i8.DialogService {
  MockDialogService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<bool?> showAlertDialog(_i8.DialogConfig? dialogConfig) =>
      (super.noSuchMethod(Invocation.method(#showAlertDialog, [dialogConfig]),
          returnValue: Future<bool?>.value()) as _i3.Future<bool?>);
  @override
  void popDialog<T>(T? result) =>
      super.noSuchMethod(Invocation.method(#popDialog, [result]),
          returnValueForMissingStub: null);
  @override
  _i3.Future<T?> showCustomDialog<T>(_i4.Widget? child) =>
      (super.noSuchMethod(Invocation.method(#showCustomDialog, [child]),
          returnValue: Future<T?>.value()) as _i3.Future<T?>);
  @override
  _i3.Future<T?> showModal<T>(_i4.Widget? child) =>
      (super.noSuchMethod(Invocation.method(#showModal, [child]),
          returnValue: Future<T?>.value()) as _i3.Future<T?>);
}

/// A class which mocks [AppRouter].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppRouter extends _i1.Mock implements _i8.AppRouter {
  MockAppRouter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<void> closeScreen() =>
      (super.noSuchMethod(Invocation.method(#closeScreen, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<bool?> showDialog(_i8.DialogConfig? dialogConfig) =>
      (super.noSuchMethod(Invocation.method(#showDialog, [dialogConfig]),
          returnValue: Future<bool?>.value()) as _i3.Future<bool?>);
  @override
  _i3.Future<void> launchUrl(String? url) =>
      (super.noSuchMethod(Invocation.method(#launchUrl, [url]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> showSignIn() =>
      (super.noSuchMethod(Invocation.method(#showSignIn, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> showHome() =>
      (super.noSuchMethod(Invocation.method(#showHome, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> showNewsDetails(
          String? newsItemId, String? newsItemAuthorId) =>
      (super.noSuchMethod(
          Invocation.method(#showNewsDetails, [newsItemId, newsItemAuthorId]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> showYoutube() =>
      (super.noSuchMethod(Invocation.method(#showYoutube, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> showTwitter() =>
      (super.noSuchMethod(Invocation.method(#showTwitter, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> showDiscord() =>
      (super.noSuchMethod(Invocation.method(#showDiscord, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> showDeckBuilder({_i2.PreBuiltDeck? preBuiltDeck}) =>
      (super.noSuchMethod(
          Invocation.method(
              #showDeckBuilder, [], {#preBuiltDeck: preBuiltDeck}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> showYugiohCardDetail(_i2.CardCopy? cardCopy, String? tag) =>
      (super.noSuchMethod(
          Invocation.method(#showYugiohCardDetail, [cardCopy, tag]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> showSpeedDuel(_i9.DuelRoom? duelRoom) =>
      (super.noSuchMethod(Invocation.method(#showSpeedDuel, [duelRoom]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<_i2.PreBuiltDeck?> showSelectDeckDialog() =>
      (super.noSuchMethod(Invocation.method(#showSelectDeckDialog, []),
              returnValue: Future<_i2.PreBuiltDeck?>.value())
          as _i3.Future<_i2.PreBuiltDeck?>);
  @override
  _i3.Future<void> showDrawCard(_i5.VoidCallback? cardDrawnCallback) =>
      (super.noSuchMethod(Invocation.method(#showDrawCard, [cardDrawnCallback]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<_i10.PlayCardDialogResult?> showPlayCardDialog(
          _i11.PlayCard? playCard,
          {_i12.Zone? newZone,
          bool? showActions = false}) =>
      (super.noSuchMethod(
              Invocation.method(#showPlayCardDialog, [playCard],
                  {#newZone: newZone, #showActions: showActions}),
              returnValue: Future<_i10.PlayCardDialogResult?>.value())
          as _i3.Future<_i10.PlayCardDialogResult?>);
  @override
  _i3.Future<_i10.AddCardToDeckDialogResult?> showAddCardToDeckDialog(
          _i11.PlayCard? playCard) =>
      (super.noSuchMethod(
              Invocation.method(#showAddCardToDeckDialog, [playCard]),
              returnValue: Future<_i10.AddCardToDeckDialogResult?>.value())
          as _i3.Future<_i10.AddCardToDeckDialogResult?>);
  @override
  _i3.Future<_i10.DeclarePhaseDialogResult?> showDeclarePhaseDialog(
          _i9.DuelPhaseType? duelPhaseType) =>
      (super.noSuchMethod(
              Invocation.method(#showDeclarePhaseDialog, [duelPhaseType]),
              returnValue: Future<_i10.DeclarePhaseDialogResult?>.value())
          as _i3.Future<_i10.DeclarePhaseDialogResult?>);
  @override
  _i3.Future<void> showDuelRoom(_i2.PreBuiltDeck? preBuiltDeck) =>
      (super.noSuchMethod(Invocation.method(#showDuelRoom, [preBuiltDeck]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> showUserSettings() =>
      (super.noSuchMethod(Invocation.method(#showUserSettings, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<double?> showLifepointsCalculator({double? initialValue}) =>
      (super.noSuchMethod(
          Invocation.method(
              #showLifepointsCalculator, [], {#initialValue: initialValue}),
          returnValue: Future<double?>.value()) as _i3.Future<double?>);
}

/// A class which mocks [DataManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockDataManager extends _i1.Mock implements _i2.DataManager {
  MockDataManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<Iterable<_i2.NewsItem>> getNewsItems() => (super.noSuchMethod(
          Invocation.method(#getNewsItems, []),
          returnValue: Future<Iterable<_i2.NewsItem>>.value(<_i2.NewsItem>[]))
      as _i3.Future<Iterable<_i2.NewsItem>>);
  @override
  _i3.Future<_i2.YugiohCard> getSpeedDuelCard(int? cardId) =>
      (super.noSuchMethod(Invocation.method(#getSpeedDuelCard, [cardId]),
              returnValue: Future<_i2.YugiohCard>.value(_FakeYugiohCard_0()))
          as _i3.Future<_i2.YugiohCard>);
  @override
  _i3.Future<Iterable<_i2.YugiohCard>> getSpeedDuelCards() =>
      (super.noSuchMethod(Invocation.method(#getSpeedDuelCards, []),
              returnValue:
                  Future<Iterable<_i2.YugiohCard>>.value(<_i2.YugiohCard>[]))
          as _i3.Future<Iterable<_i2.YugiohCard>>);
  @override
  _i3.Future<_i2.YugiohCard> getToken() =>
      (super.noSuchMethod(Invocation.method(#getToken, []),
              returnValue: Future<_i2.YugiohCard>.value(_FakeYugiohCard_0()))
          as _i3.Future<_i2.YugiohCard>);
  @override
  bool hasSpeedDuelCardsCache() =>
      (super.noSuchMethod(Invocation.method(#hasSpeedDuelCardsCache, []),
          returnValue: false) as bool);
  @override
  Iterable<_i2.PreBuiltDeck> getPreBuiltDecks() =>
      (super.noSuchMethod(Invocation.method(#getPreBuiltDecks, []),
          returnValue: <_i2.PreBuiltDeck>[]) as Iterable<_i2.PreBuiltDeck>);
  @override
  _i3.Future<Iterable<int>> getPreBuiltDeckCardIds(_i2.PreBuiltDeck? deck) =>
      (super.noSuchMethod(Invocation.method(#getPreBuiltDeckCardIds, [deck]),
              returnValue: Future<Iterable<int>>.value(<int>[]))
          as _i3.Future<Iterable<int>>);
  @override
  _i2.ConnectionInfo? getConnectionInfo({bool? forceLocalInfo = false}) =>
      (super.noSuchMethod(Invocation.method(
              #getConnectionInfo, [], {#forceLocalInfo: forceLocalInfo}))
          as _i2.ConnectionInfo?);
  @override
  _i3.Future<void> saveConnectionInfo(_i2.ConnectionInfo? connectionInfo) =>
      (super.noSuchMethod(
          Invocation.method(#saveConnectionInfo, [connectionInfo]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  bool useOnlineDuelRoom() =>
      (super.noSuchMethod(Invocation.method(#useOnlineDuelRoom, []),
          returnValue: false) as bool);
  @override
  _i3.Future<void> saveUseOnlineDuelRoom({bool? value}) => (super.noSuchMethod(
      Invocation.method(#saveUseOnlineDuelRoom, [], {#value: value}),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  Iterable<_i2.DeckAction> getDeckActions() =>
      (super.noSuchMethod(Invocation.method(#getDeckActions, []),
          returnValue: <_i2.DeckAction>[]) as Iterable<_i2.DeckAction>);
  @override
  bool isDeveloperModeEnabled() =>
      (super.noSuchMethod(Invocation.method(#isDeveloperModeEnabled, []),
          returnValue: false) as bool);
  @override
  _i3.Future<void> saveDeveloperModeEnabled({bool? value}) =>
      (super.noSuchMethod(
          Invocation.method(#saveDeveloperModeEnabled, [], {#value: value}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Stream<int> cacheCardImages(Iterable<_i2.YugiohCard>? cards) =>
      (super.noSuchMethod(Invocation.method(#cacheCardImages, [cards]),
          returnValue: Stream<int>.empty()) as _i3.Stream<int>);
  @override
  _i6.File? getCardImageFile(_i2.YugiohCard? card) =>
      (super.noSuchMethod(Invocation.method(#getCardImageFile, [card]))
          as _i6.File?);
}

/// A class which mocks [DuelFormValidators].
///
/// See the documentation for Mockito's code generation for more information.
class MockDuelFormValidators extends _i1.Mock
    implements _i13.DuelFormValidators {
  MockDuelFormValidators() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.StreamTransformer<String?, String?> get ipAddressValidator =>
      (super.noSuchMethod(Invocation.getter(#ipAddressValidator),
              returnValue: _FakeStreamTransformer_1<String?, String?>())
          as _i3.StreamTransformer<String?, String?>);
  @override
  _i3.StreamTransformer<String?, String?> get portValidator =>
      (super.noSuchMethod(Invocation.getter(#portValidator),
              returnValue: _FakeStreamTransformer_1<String?, String?>())
          as _i3.StreamTransformer<String?, String?>);
  @override
  bool isValidIpAddress(String? ipAddress) =>
      (super.noSuchMethod(Invocation.method(#isValidIpAddress, [ipAddress]),
          returnValue: false) as bool);
  @override
  bool isValidPort(String? port) =>
      (super.noSuchMethod(Invocation.method(#isValidPort, [port]),
          returnValue: false) as bool);
}

/// A class which mocks [DuelDialogProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockDuelDialogProvider extends _i1.Mock
    implements _i14.DuelDialogProvider {
  MockDuelDialogProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Widget createSelectDeckDialog() =>
      (super.noSuchMethod(Invocation.method(#createSelectDeckDialog, []),
          returnValue: _FakeWidget_2()) as _i4.Widget);
}

/// A class which mocks [SnackBarService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSnackBarService extends _i1.Mock implements _i15.SnackBarService {
  MockSnackBarService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.GlobalKey<_i16.ScaffoldMessengerState> get messengerKey =>
      (super.noSuchMethod(Invocation.getter(#messengerKey),
              returnValue: _FakeGlobalKey_3<_i16.ScaffoldMessengerState>())
          as _i4.GlobalKey<_i16.ScaffoldMessengerState>);
  @override
  void showSnackBar(String? message,
          {_i5.TextAlign? textAlign = _i5.TextAlign.left,
          double? fontSize = 14.0}) =>
      super.noSuchMethod(
          Invocation.method(#showSnackBar, [message],
              {#textAlign: textAlign, #fontSize: fontSize}),
          returnValueForMissingStub: null);
  @override
  void hideSnackBar() =>
      super.noSuchMethod(Invocation.method(#hideSnackBar, []),
          returnValueForMissingStub: null);
}

/// A class which mocks [SharedPreferencesProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferencesProvider extends _i1.Mock
    implements _i17.SharedPreferencesProvider {
  MockSharedPreferencesProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool containsKey(String? key) =>
      (super.noSuchMethod(Invocation.method(#containsKey, [key]),
          returnValue: false) as bool);
  @override
  bool getBool(String? key, {bool? defaultValue = false}) =>
      (super.noSuchMethod(
          Invocation.method(#getBool, [key], {#defaultValue: defaultValue}),
          returnValue: false) as bool);
  @override
  int? getInt(String? key) =>
      (super.noSuchMethod(Invocation.method(#getInt, [key])) as int?);
  @override
  double? getDouble(String? key) =>
      (super.noSuchMethod(Invocation.method(#getDouble, [key])) as double?);
  @override
  String? getString(String? key) =>
      (super.noSuchMethod(Invocation.method(#getString, [key])) as String?);
  @override
  List<String>? getStringList(String? key) =>
      (super.noSuchMethod(Invocation.method(#getStringList, [key]))
          as List<String>?);
  @override
  _i3.Future<bool> setBool(String? key, {bool? value}) =>
      (super.noSuchMethod(Invocation.method(#setBool, [key], {#value: value}),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> setInt(String? key, int? value) =>
      (super.noSuchMethod(Invocation.method(#setInt, [key, value]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> setDouble(String? key, double? value) =>
      (super.noSuchMethod(Invocation.method(#setDouble, [key, value]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> setString(String? key, String? value) =>
      (super.noSuchMethod(Invocation.method(#setString, [key, value]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> setStringList(String? key, List<String>? value) =>
      (super.noSuchMethod(Invocation.method(#setStringList, [key, value]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> remove(String? key) =>
      (super.noSuchMethod(Invocation.method(#remove, [key]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> clear() => (super.noSuchMethod(Invocation.method(#clear, []),
      returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
}

/// A class which mocks [AppConfig].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockAppConfig extends _i1.Mock implements _i18.AppConfig {
  MockAppConfig() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get twitterUserId =>
      (super.noSuchMethod(Invocation.getter(#twitterUserId), returnValue: '')
          as String);
  @override
  bool get loggingEnabled => (super
          .noSuchMethod(Invocation.getter(#loggingEnabled), returnValue: false)
      as bool);
  @override
  List<_i5.Locale> get supportedLocales =>
      (super.noSuchMethod(Invocation.getter(#supportedLocales),
          returnValue: <_i5.Locale>[]) as List<_i5.Locale>);
  @override
  _i5.Locale get fallbackLocale =>
      (super.noSuchMethod(Invocation.getter(#fallbackLocale),
          returnValue: _FakeLocale_4()) as _i5.Locale);
  @override
  String get translationsPath =>
      (super.noSuchMethod(Invocation.getter(#translationsPath), returnValue: '')
          as String);
  @override
  String get smartDuelServerAddress =>
      (super.noSuchMethod(Invocation.getter(#smartDuelServerAddress),
          returnValue: '') as String);
  @override
  String get smartDuelServerPort =>
      (super.noSuchMethod(Invocation.getter(#smartDuelServerPort),
          returnValue: '') as String);
  @override
  String get ygoProDeckBaseUrl => (super
          .noSuchMethod(Invocation.getter(#ygoProDeckBaseUrl), returnValue: '')
      as String);
  @override
  int get defaultApiReceiveTimeout =>
      (super.noSuchMethod(Invocation.getter(#defaultApiReceiveTimeout),
          returnValue: 0) as int);
  @override
  int get defaultApiConnectTimeout =>
      (super.noSuchMethod(Invocation.getter(#defaultApiConnectTimeout),
          returnValue: 0) as int);
  @override
  String get twitterUrl =>
      (super.noSuchMethod(Invocation.getter(#twitterUrl), returnValue: '')
          as String);
  @override
  String get tweetUrl =>
      (super.noSuchMethod(Invocation.getter(#tweetUrl), returnValue: '')
          as String);
  @override
  String get youtubeUrl =>
      (super.noSuchMethod(Invocation.getter(#youtubeUrl), returnValue: '')
          as String);
  @override
  String get discordUrl =>
      (super.noSuchMethod(Invocation.getter(#discordUrl), returnValue: '')
          as String);
}

/// A class which mocks [DuelStorageProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockDuelStorageProvider extends _i1.Mock
    implements _i19.DuelStorageProvider {
  MockDuelStorageProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<void> saveConnectionInfo(
          _i19.ConnectionInfoModel? connectionInfo) =>
      (super.noSuchMethod(
          Invocation.method(#saveConnectionInfo, [connectionInfo]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  bool useOnlineDuelRoom() =>
      (super.noSuchMethod(Invocation.method(#useOnlineDuelRoom, []),
          returnValue: false) as bool);
  @override
  _i3.Future<void> saveUseOnlineDuelRoom({bool? value}) => (super.noSuchMethod(
      Invocation.method(#saveUseOnlineDuelRoom, [], {#value: value}),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
}

/// A class which mocks [GetHomeTabsUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetHomeTabsUseCase extends _i1.Mock
    implements _i20.GetHomeTabsUseCase {
  MockGetHomeTabsUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Iterable<_i21.HomeTab> call() =>
      (super.noSuchMethod(Invocation.method(#call, []),
          returnValue: <_i21.HomeTab>[]) as Iterable<_i21.HomeTab>);
}

/// A class which mocks [StringProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockStringProvider extends _i1.Mock implements _i22.StringProvider {
  MockStringProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String getString(String? key, [List<String>? args]) =>
      (super.noSuchMethod(Invocation.method(#getString, [key, args]),
          returnValue: '') as String);
}

/// A class which mocks [SystemChromeProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockSystemChromeProvider extends _i1.Mock
    implements _i23.SystemChromeProvider {
  MockSystemChromeProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<void> setPreferredOrientations(
          List<_i24.DeviceOrientation>? orientations) =>
      (super.noSuchMethod(
          Invocation.method(#setPreferredOrientations, [orientations]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> setEnabledSystemUIMode(_i24.SystemUiMode? mode,
          {List<_i24.SystemUiOverlay>? overlays}) =>
      (super.noSuchMethod(
          Invocation.method(
              #setEnabledSystemUIMode, [mode], {#overlays: overlays}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
}

/// A class which mocks [ConnectivityProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectivityProvider extends _i1.Mock
    implements _i25.ConnectivityProvider {
  MockConnectivityProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<bool> isConnected() =>
      (super.noSuchMethod(Invocation.method(#isConnected, []),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> hasWifi() =>
      (super.noSuchMethod(Invocation.method(#hasWifi, []),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
}

/// A class which mocks [CacheCardImagesUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockCacheCardImagesUseCase extends _i1.Mock
    implements _i2.CacheCardImagesUseCase {
  MockCacheCardImagesUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i3.Stream<String>> call() => (super.noSuchMethod(
          Invocation.method(#call, []),
          returnValue: Future<_i3.Stream<String>>.value(Stream<String>.empty()))
      as _i3.Future<_i3.Stream<String>>);
}

/// A class which mocks [FileManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileManager extends _i1.Mock implements _i26.FileManager {
  MockFileManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.File? getFile(String? filePath) =>
      (super.noSuchMethod(Invocation.method(#getFile, [filePath]))
          as _i6.File?);
  @override
  _i3.Future<void> downloadAndSaveFile(String? urlPath, String? filePath) =>
      (super.noSuchMethod(
          Invocation.method(#downloadAndSaveFile, [urlPath, filePath]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
}

/// A class which mocks [Directory].
///
/// See the documentation for Mockito's code generation for more information.
class MockDirectory extends _i1.Mock implements _i6.Directory {
  MockDirectory() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  Uri get uri =>
      (super.noSuchMethod(Invocation.getter(#uri), returnValue: _FakeUri_5())
          as Uri);
  @override
  _i6.Directory get absolute =>
      (super.noSuchMethod(Invocation.getter(#absolute),
          returnValue: _FakeDirectory_6()) as _i6.Directory);
  @override
  bool get isAbsolute =>
      (super.noSuchMethod(Invocation.getter(#isAbsolute), returnValue: false)
          as bool);
  @override
  _i6.Directory get parent => (super.noSuchMethod(Invocation.getter(#parent),
      returnValue: _FakeDirectory_6()) as _i6.Directory);
  @override
  _i3.Future<_i6.Directory> create({bool? recursive = false}) => (super
          .noSuchMethod(Invocation.method(#create, [], {#recursive: recursive}),
              returnValue: Future<_i6.Directory>.value(_FakeDirectory_6()))
      as _i3.Future<_i6.Directory>);
  @override
  void createSync({bool? recursive = false}) => super.noSuchMethod(
      Invocation.method(#createSync, [], {#recursive: recursive}),
      returnValueForMissingStub: null);
  @override
  _i3.Future<_i6.Directory> createTemp([String? prefix]) =>
      (super.noSuchMethod(Invocation.method(#createTemp, [prefix]),
              returnValue: Future<_i6.Directory>.value(_FakeDirectory_6()))
          as _i3.Future<_i6.Directory>);
  @override
  _i6.Directory createTempSync([String? prefix]) =>
      (super.noSuchMethod(Invocation.method(#createTempSync, [prefix]),
          returnValue: _FakeDirectory_6()) as _i6.Directory);
  @override
  _i3.Future<String> resolveSymbolicLinks() =>
      (super.noSuchMethod(Invocation.method(#resolveSymbolicLinks, []),
          returnValue: Future<String>.value('')) as _i3.Future<String>);
  @override
  String resolveSymbolicLinksSync() =>
      (super.noSuchMethod(Invocation.method(#resolveSymbolicLinksSync, []),
          returnValue: '') as String);
  @override
  _i3.Future<_i6.Directory> rename(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#rename, [newPath]),
              returnValue: Future<_i6.Directory>.value(_FakeDirectory_6()))
          as _i3.Future<_i6.Directory>);
  @override
  _i6.Directory renameSync(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#renameSync, [newPath]),
          returnValue: _FakeDirectory_6()) as _i6.Directory);
  @override
  _i3.Stream<_i6.FileSystemEntity> list(
          {bool? recursive = false, bool? followLinks = true}) =>
      (super.noSuchMethod(
              Invocation.method(#list, [],
                  {#recursive: recursive, #followLinks: followLinks}),
              returnValue: Stream<_i6.FileSystemEntity>.empty())
          as _i3.Stream<_i6.FileSystemEntity>);
  @override
  List<_i6.FileSystemEntity> listSync(
          {bool? recursive = false, bool? followLinks = true}) =>
      (super.noSuchMethod(
          Invocation.method(#listSync, [],
              {#recursive: recursive, #followLinks: followLinks}),
          returnValue: <_i6.FileSystemEntity>[]) as List<_i6.FileSystemEntity>);
  @override
  _i3.Future<bool> exists() =>
      (super.noSuchMethod(Invocation.method(#exists, []),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  bool existsSync() => (super.noSuchMethod(Invocation.method(#existsSync, []),
      returnValue: false) as bool);
  @override
  _i3.Future<_i6.FileStat> stat() =>
      (super.noSuchMethod(Invocation.method(#stat, []),
              returnValue: Future<_i6.FileStat>.value(_FakeFileStat_7()))
          as _i3.Future<_i6.FileStat>);
  @override
  _i6.FileStat statSync() =>
      (super.noSuchMethod(Invocation.method(#statSync, []),
          returnValue: _FakeFileStat_7()) as _i6.FileStat);
  @override
  _i3.Future<_i6.FileSystemEntity> delete({bool? recursive = false}) => (super
          .noSuchMethod(Invocation.method(#delete, [], {#recursive: recursive}),
              returnValue:
                  Future<_i6.FileSystemEntity>.value(_FakeFileSystemEntity_8()))
      as _i3.Future<_i6.FileSystemEntity>);
  @override
  void deleteSync({bool? recursive = false}) => super.noSuchMethod(
      Invocation.method(#deleteSync, [], {#recursive: recursive}),
      returnValueForMissingStub: null);
  @override
  _i3.Stream<_i6.FileSystemEvent> watch(
          {int? events = 15, bool? recursive = false}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #watch, [], {#events: events, #recursive: recursive}),
              returnValue: Stream<_i6.FileSystemEvent>.empty())
          as _i3.Stream<_i6.FileSystemEvent>);
}

/// A class which mocks [AreAllCardImagesCachedUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockAreAllCardImagesCachedUseCase extends _i1.Mock
    implements _i2.AreAllCardImagesCachedUseCase {
  MockAreAllCardImagesCachedUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<bool> call() => (super.noSuchMethod(Invocation.method(#call, []),
      returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
}

/// A class which mocks [AuthenticationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthenticationService extends _i1.Mock
    implements _i27.AuthenticationService {
  MockAuthenticationService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool isSignedIn() => (super.noSuchMethod(Invocation.method(#isSignedIn, []),
      returnValue: false) as bool);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
}
