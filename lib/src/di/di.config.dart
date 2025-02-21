// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:audioplayers/audioplayers.dart' as _i11;
import 'package:cloud_firestore/cloud_firestore.dart' as _i67;
import 'package:connectivity_plus/connectivity_plus.dart' as _i27;
import 'package:dart_twitter_api/twitter_api.dart' as _i107;
import 'package:dio/dio.dart' as _i49;
import 'package:file_picker/file_picker.dart' as _i63;
import 'package:firebase_auth/firebase_auth.dart' as _i65;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i66;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i86;
import 'package:flutter/services.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i21;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i92;
import 'package:socket_io_client/socket_io_client.dart' as _i97;
import 'package:universal_io/io.dart' as _i51;
import 'package:uuid/uuid.dart' as _i111;

import '../../generated/codegen_loader.g.dart' as _i26;
import '../../packages/core/audio/audio.dart' as _i101;
import '../../packages/core/audio/src/audio_service.dart' as _i13;
import '../../packages/core/authentication/authentication.dart' as _i16;
import '../../packages/core/authentication/src/authentication_service.dart'
    as _i17;
import '../../packages/core/core_config/lib/core_config.dart' as _i4;
import '../../packages/core/core_config/lib/src/providers/date_time_provider.dart'
    as _i37;
import '../../packages/core/core_config/lib/src/providers/delay_provider.dart'
    as _i47;
import '../../packages/core/core_config/lib/src/providers/dio_plugin_provider/dio_plugin_provider.dart'
    as _i50;
import '../../packages/core/core_data_manager/lib/core_data_manager_interface.dart'
    as _i9;
import '../../packages/core/core_data_manager/lib/src/card_images/card_image_data_manager.dart'
    as _i122;
import '../../packages/core/core_data_manager/lib/src/card_images/usecases/are_all_card_images_cached_use_case.dart'
    as _i8;
import '../../packages/core/core_data_manager/lib/src/card_images/usecases/cache_card_images_use_case.dart'
    as _i23;
import '../../packages/core/core_data_manager/lib/src/data_manager.dart'
    as _i35;
import '../../packages/core/core_data_manager/lib/src/deck/deck_data_manager.dart'
    as _i42;
import '../../packages/core/core_data_manager/lib/src/duel/duel_data_manager.dart'
    as _i53;
import '../../packages/core/core_data_manager/lib/src/news/news_data_manager.dart'
    as _i77;
import '../../packages/core/core_data_manager/lib/src/settings/settings_data_manager.dart'
    as _i90;
import '../../packages/core/core_data_manager/lib/src/yugioh_cards/yugioh_cards_data_manager.dart'
    as _i117;
import '../../packages/core/core_display_config/lib/core_display_config.dart'
    as _i104;
import '../../packages/core/core_display_config/lib/src/display_config_service.dart'
    as _i128;
import '../../packages/core/core_file_manager/lib/core_file_manager.dart'
    as _i69;
import '../../packages/core/core_file_manager/lib/src/file_manager.dart'
    as _i61;
import '../../packages/core/core_general/lib/core_general.dart' as _i81;
import '../../packages/core/core_general/lib/src/formatters/date_formatter.dart'
    as _i36;
import '../../packages/core/core_localization/lib/core_localization.dart'
    as _i40;
import '../../packages/core/core_localization/lib/src/di/localization_module.dart'
    as _i135;
import '../../packages/core/core_localization/lib/src/string_provider.dart'
    as _i105;
import '../../packages/core/core_logger/lib/core_logger.dart' as _i19;
import '../../packages/core/core_logger/lib/src/logger.dart' as _i73;
import '../../packages/core/core_logger/lib/src/logger_impl.dart' as _i74;
import '../../packages/core/core_messaging/lib/core_messaging.dart' as _i41;
import '../../packages/core/core_messaging/lib/src/snack_bar/snack_bar_service.dart'
    as _i96;
import '../../packages/core/core_navigation/lib/core_navigation.dart' as _i5;
import '../../packages/core/core_navigation/lib/src/app_router.dart' as _i3;
import '../../packages/core/core_navigation/lib/src/auto_route_router.gr.dart'
    as _i20;
import '../../packages/core/core_navigation/lib/src/di/navigation_module.dart'
    as _i133;
import '../../packages/core/core_navigation/lib/src/dialogs/dialog_service.dart'
    as _i48;
import '../../packages/core/core_navigation/lib/src/guards/auth_guard.dart'
    as _i15;
import '../../packages/core/core_smart_duel_server/lib/core_smart_duel_server.dart'
    as _i56;
import '../../packages/core/core_smart_duel_server/lib/src/smart_duel_server.dart'
    as _i94;
import '../../packages/core/core_storage/lib/core_storage.dart' as _i22;
import '../../packages/core/core_storage/lib/src/deck/deck_storage_provider.dart'
    as _i45;
import '../../packages/core/core_storage/lib/src/di/storage_module.dart'
    as _i134;
import '../../packages/core/core_storage/lib/src/duel/duel_storage_provider.dart'
    as _i58;
import '../../packages/core/core_storage/lib/src/settings/settings_storage_provider.dart'
    as _i91;
import '../../packages/core/core_storage/lib/src/yugioh_cards/yugioh_cards_storage_provider.dart'
    as _i119;
import '../../packages/core/core_ygoprodeck/lib/core_ygoprodeck.dart' as _i118;
import '../../packages/core/core_ygoprodeck/lib/src/api/ygoprodeck_api.dart'
    as _i115;
import '../../packages/core/core_ygoprodeck/lib/src/di/ygoprodeck_module.dart'
    as _i137;
import '../../packages/core/core_ygoprodeck/lib/src/ygoprodeck_api_provider.dart'
    as _i130;
import '../../packages/features/deck/src/deck_viewmodel.dart' as _i126;
import '../../packages/features/deck/src/models/deck_screen_parameters.dart'
    as _i127;
import '../../packages/features/deck/src/usecases/get_card_ids_from_deck_file_use_case.dart'
    as _i68;
import '../../packages/features/feature_deck_builder/lib/src/deck_builder/deck_builder_viewmodel.dart'
    as _i38;
import '../../packages/features/feature_deck_builder/lib/src/deck_builder/models/deck_builder_screen_parameters.dart'
    as _i39;
import '../../packages/features/feature_duel_room/lib/src/duel_room_viewmodel.dart'
    as _i55;
import '../../packages/features/feature_home/lib/src/duel/duel_viewmodel.dart'
    as _i59;
import '../../packages/features/feature_home/lib/src/duel/mixins/duel_form_validators.dart'
    as _i54;
import '../../packages/features/feature_home/lib/src/home/home_viewmodel.dart'
    as _i71;
import '../../packages/features/feature_home/lib/src/home/usecases/get_home_tabs_use_case.dart'
    as _i70;
import '../../packages/features/feature_home/lib/src/news/news_viewmodel.dart'
    as _i80;
import '../../packages/features/feature_onboarding/lib/src/onboarding/onboarding_viewmodel.dart'
    as _i82;
import '../../packages/features/feature_privacy_policy/lib/src/privacy_policy_viewmodel.dart'
    as _i84;
import '../../packages/features/feature_speed_duel/lib/feature_speed_duel.dart'
    as _i7;
import '../../packages/features/feature_speed_duel/lib/src/dialogs/play_card_dialog/usecases/create_play_card_dialog_actions_use_case.dart'
    as _i31;
import '../../packages/features/feature_speed_duel/lib/src/dialogs/speed_duel_dialog_provider.dart'
    as _i98;
import '../../packages/features/feature_speed_duel/lib/src/helpers/speed_duel_event_animation_handler.dart'
    as _i99;
import '../../packages/features/feature_speed_duel/lib/src/helpers/speed_duel_event_audio_handler.dart'
    as _i100;
import '../../packages/features/feature_speed_duel/lib/src/helpers/speed_duel_event_emitter.dart'
    as _i102;
import '../../packages/features/feature_speed_duel/lib/src/speed_duel_viewmodel.dart'
    as _i103;
import '../../packages/features/feature_speed_duel/lib/src/usecases/can_card_attack_zone_use_case.dart'
    as _i24;
import '../../packages/features/feature_speed_duel/lib/src/usecases/create_play_card_use_case.dart'
    as _i32;
import '../../packages/features/feature_speed_duel/lib/src/usecases/create_player_state_use_case.dart'
    as _i34;
import '../../packages/features/feature_speed_duel/lib/src/usecases/does_card_fit_in_zone_use_case.dart'
    as _i52;
import '../../packages/features/feature_speed_duel/lib/src/usecases/move_card_use_case.dart'
    as _i76;
import '../../packages/features/feature_user_settings/lib/src/game_settings/game_settings_viewmodel.dart'
    as _i129;
import '../../packages/features/feature_user_settings/lib/src/user_settings_viewmodel.dart'
    as _i110;
import '../../packages/features/feature_yugioh_card_detail/lib/src/yugioh_card_detail_viewmodel.dart'
    as _i116;
import '../../packages/features/profile/src/profile_viewmodel.dart' as _i85;
import '../../packages/wrappers/audio_player/audio_player.dart' as _i14;
import '../../packages/wrappers/audio_player/src/audio_player_provider.dart'
    as _i12;
import '../../packages/wrappers/audio_player/src/di/audio_player_module.dart'
    as _i132;
import '../../packages/wrappers/file_picker/file_picker.dart' as _i62;
import '../../packages/wrappers/file_picker/src/di/file_picker_module.dart'
    as _i139;
import '../../packages/wrappers/file_picker/src/file_picker_provider.dart'
    as _i64;
import '../../packages/wrappers/uuid/src/di/uuid_module.dart' as _i147;
import '../../packages/wrappers/uuid/src/uuid_provider.dart' as _i112;
import '../../packages/wrappers/uuid/uuid.dart' as _i44;
import '../../packages/wrappers/wrapper_auth/src/auth_provider.dart' as _i120;
import '../../packages/wrappers/wrapper_auth/src/di/auth_module.dart' as _i140;
import '../../packages/wrappers/wrapper_auth/src/firebase/firebase_auth_provider.dart'
    as _i121;
import '../../packages/wrappers/wrapper_auth/wrapper_auth.dart' as _i18;
import '../../packages/wrappers/wrapper_clipboard/lib/src/clipboard_provider.dart'
    as _i25;
import '../../packages/wrappers/wrapper_clipboard/lib/wrapper_clipboard.dart'
    as _i57;
import '../../packages/wrappers/wrapper_cloud_database/lib/src/cloud_database_provider.dart'
    as _i123;
import '../../packages/wrappers/wrapper_cloud_database/lib/src/di/cloud_database_module.dart'
    as _i142;
import '../../packages/wrappers/wrapper_cloud_database/lib/src/firebase/firebase_cloud_database_provider.dart'
    as _i124;
import '../../packages/wrappers/wrapper_cloud_database/lib/wrapper_cloud_database.dart'
    as _i43;
import '../../packages/wrappers/wrapper_connectivity/lib/src/connectivity_provider.dart'
    as _i28;
import '../../packages/wrappers/wrapper_connectivity/lib/src/di/connectivity_module.dart'
    as _i136;
import '../../packages/wrappers/wrapper_connectivity/lib/wrapper_connectivity.dart'
    as _i83;
import '../../packages/wrappers/wrapper_crashlytics/lib/src/crashlytics_provider.dart'
    as _i29;
import '../../packages/wrappers/wrapper_crashlytics/lib/src/di/crashlytics_module.dart'
    as _i141;
import '../../packages/wrappers/wrapper_crashlytics/lib/src/firebase/firebase_crashlytics_provider.dart'
    as _i125;
import '../../packages/wrappers/wrapper_crashlytics/lib/src/web/web_crashlytics_provider.dart'
    as _i30;
import '../../packages/wrappers/wrapper_crashlytics/lib/wrapper_crashlytics.dart'
    as _i75;
import '../../packages/wrappers/wrapper_enum_helper/lib/src/enum_helper.dart'
    as _i60;
import '../../packages/wrappers/wrapper_enum_helper/lib/wrapper_enum_helper.dart'
    as _i33;
import '../../packages/wrappers/wrapper_html_unescape/lib/src/html_unescape_provider.dart'
    as _i72;
import '../../packages/wrappers/wrapper_html_unescape/lib/wrapper_html_unescape.dart'
    as _i79;
import '../../packages/wrappers/wrapper_path_provider/lib/src/di/path_provider_module.dart'
    as _i138;
import '../../packages/wrappers/wrapper_remote_config/lib/src/di/remote_config_module.dart'
    as _i143;
import '../../packages/wrappers/wrapper_remote_config/lib/src/firebase/firebase_remote_config_provider.dart'
    as _i88;
import '../../packages/wrappers/wrapper_remote_config/lib/src/web/web_remote_config_provider.dart'
    as _i89;
import '../../packages/wrappers/wrapper_remote_config/lib/wrapper_remote_config.dart'
    as _i87;
import '../../packages/wrappers/wrapper_shared_preferences/lib/src/di/shared_preferences_module.dart'
    as _i144;
import '../../packages/wrappers/wrapper_shared_preferences/lib/src/shared_preferences_provider.dart'
    as _i93;
import '../../packages/wrappers/wrapper_shared_preferences/lib/wrapper_shared_preferences.dart'
    as _i46;
import '../../packages/wrappers/wrapper_system_chrome/lib/src/system_chrome_provider.dart'
    as _i106;
import '../../packages/wrappers/wrapper_twitter/lib/src/di/twitter_module.dart'
    as _i146;
import '../../packages/wrappers/wrapper_twitter/lib/src/twitter_provider.dart'
    as _i108;
import '../../packages/wrappers/wrapper_twitter/lib/wrapper_twitter.dart'
    as _i78;
import '../../packages/wrappers/wrapper_url_launcher/lib/src/url_launcher_provider.dart'
    as _i109;
import '../../packages/wrappers/wrapper_url_launcher/lib/wrapper_url_launcher.dart'
    as _i6;
import '../../packages/wrappers/wrapper_web_socket/lib/src/di/web_socket_module.dart'
    as _i145;
import '../../packages/wrappers/wrapper_web_socket/lib/src/web_socket_factory.dart'
    as _i113;
import '../../packages/wrappers/wrapper_web_socket/lib/src/web_socket_provider.dart'
    as _i114;
import '../../packages/wrappers/wrapper_web_socket/lib/wrapper_web_socket.dart'
    as _i95;
import 'modules/flutter_module.dart' as _i131;

const String _web = 'web';
const String _mobile = 'mobile';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final flutterModule = _$FlutterModule();
  final audioPlayerModule = _$AudioPlayerModule();
  final navigationModule = _$NavigationModule();
  final storageModule = _$StorageModule();
  final localizationModule = _$LocalizationModule();
  final connectivityModule = _$ConnectivityModule();
  final ygoProDeckModule = _$YgoProDeckModule();
  final pathProviderModule = _$PathProviderModule();
  final filePickerModule = _$FilePickerModule();
  final authModule = _$AuthModule();
  final crashlyticsModule = _$CrashlyticsModule();
  final cloudDatabaseModule = _$CloudDatabaseModule();
  final remoteConfigModule = _$RemoteConfigModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final socketIoModule = _$SocketIoModule();
  final twitterModule = _$TwitterModule();
  final uuidModule = _$UuidModule();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouterImpl(
      get<_i4.AppConfig>(),
      get<_i5.AutoRouteRouter>(),
      get<_i5.DialogService>(),
      get<_i6.UrlLauncherProvider>(),
      get<_i7.SpeedDuelDialogProvider>()));
  gh.lazySingleton<_i8.AreAllCardImagesCachedUseCase>(
      () => _i8.AreAllCardImagesCachedUseCaseImpl(get<_i9.DataManager>()));
  gh.lazySingleton<_i10.AssetBundle>(() => flutterModule.provideAssetBundle);
  gh.lazySingleton<_i11.AudioCache>(
      () => audioPlayerModule.provideAudioCache());
  gh.lazySingleton<_i12.AudioPlayerProvider>(
      () => _i12.AudioPlayerProviderImpl(get<_i11.AudioCache>()));
  gh.lazySingleton<_i13.AudioService>(() => _i13.AudioServiceImpl(
      get<_i14.AudioPlayerProvider>(), get<_i9.DataManager>()));
  gh.lazySingleton<_i15.AuthGuard>(
      () => _i15.AuthGuard(get<_i16.AuthenticationService>()));
  gh.lazySingleton<_i17.AuthenticationService>(
      () => _i17.AuthenticationServiceImpl(
          get<_i18.AuthProvider>(), get<_i19.Logger>()),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i20.AutoRouteRouter>(
      () => navigationModule.provideAutoRouteRouter(get<_i15.AuthGuard>()));
  await gh.lazySingletonAsync<_i21.Box<_i22.DbYugiohCard>>(
      () => storageModule.provideYugiohCardBox(),
      preResolve: true);
  gh.lazySingleton<_i23.CacheCardImagesUseCase>(
      () => _i23.CacheCardImagesUseCaseImpl(get<_i9.DataManager>()));
  gh.lazySingleton<_i24.CanCardAttackZoneUseCase>(
      () => _i24.CanCardAttackZoneUseCase());
  gh.lazySingleton<_i25.ClipboardProvider>(() => _i25.ClipboardProviderImpl());
  gh.lazySingleton<_i26.CodegenLoader>(
      () => localizationModule.provideCodegenLoader);
  gh.lazySingleton<_i27.Connectivity>(
      () => connectivityModule.provideConnectivity());
  gh.singleton<_i28.ConnectivityProvider>(
      _i28.ConnectivityProviderImpl(get<_i27.Connectivity>()));
  gh.lazySingleton<_i29.CrashlyticsProvider>(
      () => _i30.WebCrashlyticsProvider(),
      registerFor: {_web});
  gh.lazySingleton<_i31.CreatePlayCardDialogActionsUseCase>(
      () => _i31.CreatePlayCardDialogActionsUseCase());
  gh.lazySingleton<_i32.CreatePlayCardUseCase>(() => _i32.CreatePlayCardUseCase(
      get<_i9.DataManager>(), get<_i33.EnumHelper>()));
  gh.lazySingleton<_i34.CreatePlayerStateUseCase>(() =>
      _i34.CreatePlayerStateUseCase(
          get<_i9.DataManager>(), get<_i32.CreatePlayCardUseCase>()));
  gh.lazySingleton<_i35.DataManager>(() => _i35.DataManagerImpl(
      get<_i9.NewsDataManager>(),
      get<_i9.YugiohCardsDataManager>(),
      get<_i9.DeckDataManager>(),
      get<_i9.DuelDataManager>(),
      get<_i9.SettingsDataManager>(),
      get<_i9.CardImageDataManager>()));
  gh.lazySingleton<_i36.DateFormatter>(() => _i36.DateFormatter());
  gh.lazySingleton<_i37.DateTimeProvider>(() => _i37.DateTimeProviderImpl());
  gh.factoryParam<_i38.DeckBuilderViewModel, _i39.DeckBuilderScreenParameters?,
          dynamic>(
      (_screenParams, _) => _i38.DeckBuilderViewModel(
          get<_i19.Logger>(),
          _screenParams,
          get<_i5.AppRouter>(),
          get<_i9.DataManager>(),
          get<_i40.StringProvider>(),
          get<_i5.DialogService>(),
          get<_i41.SnackBarService>()));
  gh.lazySingleton<_i42.DeckDataManager>(() => _i42.DeckDataManagerImpl(
      get<_i16.AuthenticationService>(),
      get<_i43.CloudDatabaseProvider>(),
      get<_i22.DeckStorageProvider>(),
      get<_i44.UuidProvider>()));
  gh.lazySingleton<_i45.DeckStorageProvider>(() =>
      _i45.DeckStorageProviderImpl(get<_i46.SharedPreferencesProvider>()));
  gh.lazySingleton<_i47.DelayProvider>(() => _i47.DelayProviderImpl());
  gh.lazySingleton<_i48.DialogService>(
      () => _i48.DialogServiceImpl(get<_i5.AutoRouteRouter>()));
  gh.lazySingleton<_i49.Dio>(
      () => ygoProDeckModule.provideYgoProDeckDio(get<_i4.AppConfig>(),
          get<_i4.DioPluginProvider>(), get<_i19.Logger>()),
      instanceName: 'YgoProDeckDio');
  gh.lazySingleton<_i50.DioPluginProvider>(() => _i50.DioPluginProviderImpl());
  await gh.lazySingletonAsync<_i51.Directory>(
      () => pathProviderModule.provideMobileTempDirectory(),
      instanceName: 'TempDirectoryName',
      registerFor: {_mobile},
      preResolve: true);
  await gh.lazySingletonAsync<_i51.Directory>(
      () => pathProviderModule.provideWebAppDirectory(),
      instanceName: 'AppDirectory',
      registerFor: {_web},
      preResolve: true);
  await gh.lazySingletonAsync<_i51.Directory>(
      () => pathProviderModule.provideWebTempDirectory(),
      instanceName: 'TempDirectoryName',
      registerFor: {_web},
      preResolve: true);
  await gh.lazySingletonAsync<_i51.Directory>(
      () => pathProviderModule.provideMobileAppDirectory(),
      instanceName: 'AppDirectory',
      registerFor: {_mobile},
      preResolve: true);
  gh.lazySingleton<_i52.DoesCardFitInZoneUseCase>(
      () => _i52.DoesCardFitInZoneUseCase());
  gh.lazySingleton<_i53.DuelDataManager>(() => _i53.DuelDataManagerImpl(
      get<_i4.AppConfig>(), get<_i22.DuelStorageProvider>()));
  gh.lazySingleton<_i54.DuelFormValidators>(
      () => _i54.DuelFormValidators(get<_i40.StringProvider>()));
  gh.factory<_i55.DuelRoomViewModel>(() => _i55.DuelRoomViewModel(
      get<_i19.Logger>(),
      get<_i5.AppRouter>(),
      get<_i56.SmartDuelServer>(),
      get<_i9.DataManager>(),
      get<_i41.SnackBarService>(),
      get<_i57.ClipboardProvider>(),
      get<_i40.StringProvider>()));
  gh.lazySingleton<_i58.DuelStorageProvider>(() =>
      _i58.DuelStorageProviderImpl(get<_i46.SharedPreferencesProvider>()));
  gh.factory<_i59.DuelViewModel>(() => _i59.DuelViewModel(
      get<_i54.DuelFormValidators>(),
      get<_i5.AppRouter>(),
      get<_i9.DataManager>(),
      get<_i19.Logger>()));
  gh.lazySingleton<_i60.EnumHelper>(() => _i60.EnumHelperImpl());
  gh.lazySingleton<_i61.FileManager>(
      () => _i61.FileManagerImpl(get<_i62.FilePickerProvider>()));
  gh.lazySingleton<_i63.FilePicker>(() => filePickerModule.provideFilePicker());
  gh.lazySingleton<_i64.FilePickerProvider>(
      () => _i64.FilePickerProviderImpl(get<_i63.FilePicker>()));
  gh.lazySingleton<_i65.FirebaseAuth>(() => authModule.provideFirebaseAuth());
  gh.lazySingleton<_i66.FirebaseCrashlytics>(
      () => crashlyticsModule.provideFirebaseCrashlytics());
  gh.lazySingleton<_i67.FirebaseFirestore>(
      () => cloudDatabaseModule.provideFirebaseFirestore());
  gh.lazySingleton<_i68.GetCardIdsFromDeckFileUseCase>(() =>
      _i68.GetCardIdsFromDeckFileUseCase(get<_i9.DataManager>(),
          get<_i69.FileManager>(), get<_i40.StringProvider>()));
  gh.lazySingleton<_i70.GetHomeTabsUseCase>(() => _i70.GetHomeTabsUseCase());
  gh.factory<_i71.HomeViewModel>(() => _i71.HomeViewModel(get<_i5.AppRouter>(),
      get<_i70.GetHomeTabsUseCase>(), get<_i19.Logger>()));
  gh.lazySingleton<_i72.HtmlUnescapeProvider>(
      () => _i72.HtmlUnescapeProviderImpl());
  gh.lazySingleton<_i73.Logger>(() =>
      _i74.LoggerImpl(get<_i75.CrashlyticsProvider>(), get<_i4.AppConfig>()));
  gh.lazySingleton<_i76.MoveCardUseCase>(() => _i76.MoveCardUseCase());
  gh.lazySingleton<_i77.NewsDataManager>(() => _i77.NewsDataManagerImpl(
      get<_i4.AppConfig>(),
      get<_i78.TwitterProvider>(),
      get<_i79.HtmlUnescapeProvider>()));
  gh.factory<_i80.NewsViewModel>(() => _i80.NewsViewModel(get<_i5.AppRouter>(),
      get<_i9.DataManager>(), get<_i81.DateFormatter>(), get<_i19.Logger>()));
  gh.factory<_i82.OnboardingViewModel>(() => _i82.OnboardingViewModel(
      get<_i5.AppRouter>(),
      get<_i16.AuthenticationService>(),
      get<_i9.DataManager>(),
      get<_i9.AreAllCardImagesCachedUseCase>(),
      get<_i9.CacheCardImagesUseCase>(),
      get<_i40.StringProvider>(),
      get<_i83.ConnectivityProvider>(),
      get<_i19.Logger>()));
  gh.factory<_i84.PrivacyPolicyViewModel>(() => _i84.PrivacyPolicyViewModel(
      get<_i10.AssetBundle>(), get<_i5.AppRouter>(), get<_i19.Logger>()));
  gh.factory<_i85.ProfileViewModel>(() => _i85.ProfileViewModel(
      get<_i73.Logger>(),
      get<_i16.AuthenticationService>(),
      get<_i41.SnackBarService>(),
      get<_i40.StringProvider>(),
      get<_i4.DelayProvider>()));
  gh.lazySingleton<_i86.RemoteConfig>(
      () => remoteConfigModule.provideRemoteConfig());
  gh.lazySingleton<_i87.RemoteConfigProvider>(
      () => _i88.FirebaseRemoteConfigProvider(get<_i86.RemoteConfig>()),
      registerFor: {_mobile});
  gh.lazySingleton<_i87.RemoteConfigProvider>(
      () => _i89.WebRemoteConfigProvider(),
      registerFor: {_web});
  gh.lazySingleton<_i90.SettingsDataManager>(
      () => _i90.SettingsDataManagerImpl(get<_i22.SettingsStorageProvider>()));
  gh.lazySingleton<_i91.SettingsStorageProvider>(() =>
      _i91.SettingsStorageProviderImpl(get<_i46.SharedPreferencesProvider>()));
  await gh.lazySingletonAsync<_i92.SharedPreferences>(
      () => sharedPreferencesModule.provideSharedPreferences(),
      preResolve: true);
  gh.lazySingleton<_i93.SharedPreferencesProvider>(
      () => _i93.SharedPreferencesProviderImpl(get<_i92.SharedPreferences>()));
  gh.lazySingleton<_i94.SmartDuelServer>(() => _i94.SmartDuelServerImpl(
      get<_i95.WebSocketFactory>(), get<_i19.Logger>()));
  gh.lazySingleton<_i96.SnackBarService>(() => _i96.SnackBarServiceImpl());
  gh.factory<_i97.Socket>(
      () => socketIoModule.provideSocket(get<_i9.DataManager>()));
  gh.lazySingleton<_i98.SpeedDuelDialogProvider>(
      () => _i98.SpeedDuelDialogProvider());
  gh.lazySingleton<_i99.SpeedDuelEventAnimationHandler>(
      () => _i99.SpeedDuelEventAnimationHandler(
          get<_i4.DelayProvider>(), get<_i19.Logger>()),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i100.SpeedDuelEventAudioHandler>(
      () => _i100.SpeedDuelEventAudioHandler(get<_i101.AudioService>()));
  gh.lazySingleton<_i102.SpeedDuelEventEmitter>(() =>
      _i102.SpeedDuelEventEmitter(get<_i56.SmartDuelServer>(),
          get<_i33.EnumHelper>(), get<_i19.Logger>()));
  gh.factoryParam<_i103.SpeedDuelViewModel, _i56.DuelRoom?, dynamic>(
      (_duelRoom, _) => _i103.SpeedDuelViewModel(
          _duelRoom,
          get<_i5.AppRouter>(),
          get<_i56.SmartDuelServer>(),
          get<_i34.CreatePlayerStateUseCase>(),
          get<_i32.CreatePlayCardUseCase>(),
          get<_i52.DoesCardFitInZoneUseCase>(),
          get<_i24.CanCardAttackZoneUseCase>(),
          get<_i76.MoveCardUseCase>(),
          get<_i102.SpeedDuelEventEmitter>(),
          get<_i99.SpeedDuelEventAnimationHandler>(),
          get<_i100.SpeedDuelEventAudioHandler>(),
          get<_i9.DataManager>(),
          get<_i75.CrashlyticsProvider>(),
          get<_i41.SnackBarService>(),
          get<_i104.DisplayConfigService>(),
          get<_i19.Logger>()));
  gh.lazySingleton<_i105.StringProvider>(() => _i105.StringProviderImpl());
  gh.lazySingleton<_i106.SystemChromeProvider>(
      () => _i106.SystemChromeProviderImpl());
  gh.lazySingleton<_i107.TwitterApi>(
      () => twitterModule.provideTwitterApi(get<_i4.AppConfig>()));
  gh.lazySingleton<_i108.TwitterProvider>(
      () => _i108.TwitterProviderImpl(get<_i107.TwitterApi>()));
  gh.lazySingleton<_i109.UrlLauncherProvider>(
      () => _i109.UrlLauncherProviderImpl());
  gh.factory<_i110.UserSettingsViewModel>(() => _i110.UserSettingsViewModel(
      get<_i5.AppRouter>(),
      get<_i16.AuthenticationService>(),
      get<_i9.DataManager>(),
      get<_i41.SnackBarService>(),
      get<_i40.StringProvider>(),
      get<_i73.Logger>()));
  gh.lazySingleton<_i111.Uuid>(() => uuidModule.provideUuid());
  gh.lazySingleton<_i112.UuidProvider>(
      () => _i112.UuidProviderImpl(get<_i111.Uuid>()));
  gh.lazySingleton<_i113.WebSocketFactory>(() => _i113.WebSocketFactoryImpl());
  gh.factory<_i114.WebSocketProvider>(() =>
      _i114.WebSocketProviderImpl(get<_i97.Socket>(), get<_i19.Logger>()));
  gh.lazySingleton<_i115.YgoProDeckRestClient>(() =>
      _i115.YgoProDeckRestClient(get<_i49.Dio>(instanceName: 'YgoProDeckDio')));
  gh.factoryParam<_i116.YugiohCardDetailViewModel, _i9.CardCopy?, String?>(
      (_cardCopy, _tag) =>
          _i116.YugiohCardDetailViewModel(_cardCopy, _tag, get<_i19.Logger>()));
  gh.lazySingleton<_i117.YugiohCardsDataManager>(() =>
      _i117.YugiohCardsDataManagerImpl(get<_i118.YgoProDeckApiProvider>(),
          get<_i22.YugiohCardsStorageProvider>(), get<_i19.Logger>()));
  gh.lazySingleton<_i119.YugiohCardsStorageProvider>(() =>
      _i119.YugiohCardsStorageProviderImpl(
          get<_i21.Box<_i22.DbYugiohCard>>(),
          get<_i46.SharedPreferencesProvider>(),
          get<_i87.RemoteConfigProvider>(),
          get<_i4.DateTimeProvider>(),
          get<_i19.Logger>()));
  gh.lazySingleton<_i120.AuthProvider>(
      () => _i121.FirebaseAuthProvider(get<_i65.FirebaseAuth>()));
  gh.lazySingleton<_i122.CardImageDataManager>(() =>
      _i122.CardImageDataManagerImpl(get<_i61.FileManager>(),
          get<_i51.Directory>(instanceName: 'AppDirectory')));
  gh.lazySingleton<_i123.CloudDatabaseProvider>(
      () => _i124.FirebaseCloudDatabaseProvider(get<_i67.FirebaseFirestore>()));
  gh.lazySingleton<_i29.CrashlyticsProvider>(
      () => _i125.FirebaseCrashlyticsProvider(get<_i66.FirebaseCrashlytics>()),
      registerFor: {_mobile});
  gh.factoryParam<_i126.DeckViewModel, _i127.DeckScreenParameters?, dynamic>(
      (_screenParams, _) => _i126.DeckViewModel(
          get<_i19.Logger>(),
          _screenParams,
          get<_i5.AppRouter>(),
          get<_i9.DataManager>(),
          get<_i41.SnackBarService>(),
          get<_i5.DialogService>(),
          get<_i40.StringProvider>(),
          get<_i68.GetCardIdsFromDeckFileUseCase>()));
  gh.lazySingleton<_i128.DisplayConfigService>(
      () => _i128.DisplayConfigServiceImpl(get<_i106.SystemChromeProvider>()));
  gh.factory<_i129.GameSettingsViewModel>(() => _i129.GameSettingsViewModel(
      get<_i73.Logger>(), get<_i9.DataManager>(), get<_i4.DelayProvider>()));
  gh.lazySingleton<_i130.YgoProDeckApiProvider>(() =>
      _i130.YgoProDeckApiProviderImpl(
          get<_i115.YgoProDeckRestClient>(), get<_i19.Logger>()));
  return get;
}

class _$FlutterModule extends _i131.FlutterModule {}

class _$AudioPlayerModule extends _i132.AudioPlayerModule {}

class _$NavigationModule extends _i133.NavigationModule {}

class _$StorageModule extends _i134.StorageModule {}

class _$LocalizationModule extends _i135.LocalizationModule {}

class _$ConnectivityModule extends _i136.ConnectivityModule {}

class _$YgoProDeckModule extends _i137.YgoProDeckModule {}

class _$PathProviderModule extends _i138.PathProviderModule {}

class _$FilePickerModule extends _i139.FilePickerModule {}

class _$AuthModule extends _i140.AuthModule {}

class _$CrashlyticsModule extends _i141.CrashlyticsModule {}

class _$CloudDatabaseModule extends _i142.CloudDatabaseModule {}

class _$RemoteConfigModule extends _i143.RemoteConfigModule {}

class _$SharedPreferencesModule extends _i144.SharedPreferencesModule {}

class _$SocketIoModule extends _i145.SocketIoModule {}

class _$TwitterModule extends _i146.TwitterModule {}

class _$UuidModule extends _i147.UuidModule {}
