import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smart_duel_disk/generated/locale_keys.g.dart';
import 'package:smart_duel_disk/packages/core/authentication/authentication.dart';
import 'package:smart_duel_disk/packages/core/core_data_manager/lib/core_data_manager_interface.dart';
import 'package:smart_duel_disk/packages/core/core_general/lib/core_general.dart';
import 'package:smart_duel_disk/packages/core/core_localization/lib/core_localization.dart';
import 'package:smart_duel_disk/packages/core/core_logger/lib/src/logger.dart';
import 'package:smart_duel_disk/packages/core/core_messaging/lib/core_messaging.dart';
import 'package:smart_duel_disk/packages/core/core_navigation/lib/core_navigation.dart';
import 'package:smart_duel_disk/packages/ui_components/lib/ui_components.dart';

import 'models/user_setting_type.dart';

@Injectable()
class UserSettingsViewModel extends BaseViewModel {
  static const _tag = 'UserSettingsViewModel';

  static const _userSettingTypes = [
    UserSettingType.profile,
    UserSettingType.gameSettings,
    UserSettingType.developerModeEnabled,
    UserSettingType.signOut,
  ];

  final AppRouter _router;
  final AuthenticationService _authService;
  final DataManager _dataManager;
  final SnackBarService _snackBarService;
  final StringProvider _stringProvider;

  final _userSettings = BehaviorSubject<Iterable<SettingItem<UserSettingType>>>();
  Stream<Iterable<SettingItem>> get userSettings => _userSettings.stream;

  UserSettingsViewModel(
    this._router,
    this._authService,
    this._dataManager,
    this._snackBarService,
    this._stringProvider,
    Logger logger,
  ) : super(logger);

  void init() {
    logger.info(_tag, 'init()');

    var userSettings = _userSettingTypes.map((type) => type.toSettingItem()).toList();

    userSettings = _updateGameSettingsSetting(userSettings);
    userSettings = _updateProfileSetting(userSettings);
    userSettings = _updateDeveloperModeEnabledSetting(userSettings);
    userSettings = _updateSignOutSetting(userSettings);

    _userSettings.safeAdd(userSettings);
  }

  //region Game settings

  List<SettingItem<UserSettingType>> _updateGameSettingsSetting(List<SettingItem<UserSettingType>> settings) {
    logger.verbose(_tag, '_updateGameSettingsSetting()');

    final oldSetting = settings.firstWhere((setting) => setting.type == UserSettingType.gameSettings);
    final oldSettingIndex = settings.indexOf(oldSetting);

    final newSetting = ActionSettingItem<UserSettingType>(
      titleId: oldSetting.titleId,
      leadingIcon: oldSetting.leadingIcon,
      type: oldSetting.type,
      onPressed: _router.showGameSettings,
    );

    settings.remove(oldSetting);
    settings.insert(oldSettingIndex, newSetting);

    return settings;
  }

  //endregion

  //region Profile

  List<SettingItem<UserSettingType>> _updateProfileSetting(List<SettingItem<UserSettingType>> settings) {
    logger.verbose(_tag, '_updateProfileSetting()');

    final oldSetting = settings.firstWhere((setting) => setting.type == UserSettingType.profile);
    final oldSettingIndex = settings.indexOf(oldSetting);

    final newSetting = ActionSettingItem<UserSettingType>(
      titleId: oldSetting.titleId,
      leadingIcon: oldSetting.leadingIcon,
      type: oldSetting.type,
      onPressed: _router.showProfile,
    );

    settings.remove(oldSetting);
    settings.insert(oldSettingIndex, newSetting);

    return settings;
  }

  //endregion

  //region Sign out

  List<SettingItem<UserSettingType>> _updateSignOutSetting(List<SettingItem<UserSettingType>> settings) {
    logger.verbose(_tag, '_updateSignOutSetting()');

    final oldSetting = settings.firstWhere((setting) => setting.type == UserSettingType.signOut);
    final oldSettingIndex = settings.indexOf(oldSetting);

    final newSetting = ActionSettingItem(
      titleId: oldSetting.titleId,
      leadingIcon: oldSetting.leadingIcon,
      type: oldSetting.type,
      onPressed: _signOut,
    );

    settings.remove(oldSetting);
    settings.insert(oldSettingIndex, newSetting);

    return settings;
  }

  Future<void> _signOut() async {
    logger.verbose(_tag, '_signOut()');

    await _authService.signOut();
    await _router.showOnboarding();
  }

  //endregion

  //region Developer mode

  List<SettingItem<UserSettingType>> _updateDeveloperModeEnabledSetting(List<SettingItem<UserSettingType>> settings) {
    logger.verbose(_tag, '_updateDeveloperModeEnabledSetting()');

    final oldSetting = settings.firstWhere((setting) => setting.type == UserSettingType.developerModeEnabled);
    final oldSettingIndex = settings.indexOf(oldSetting);

    final developerModeEnabled = _dataManager.isDeveloperModeEnabled();
    final newSetting = SwitchSettingItem(
      titleId: oldSetting.titleId,
      leadingIcon: oldSetting.leadingIcon,
      type: oldSetting.type,
      value: developerModeEnabled,
      onValueChanged: onDeveloperModeEnabledChanged,
    );

    settings.remove(oldSetting);
    settings.insert(oldSettingIndex, newSetting);

    return settings;
  }

  // ignore: avoid_positional_boolean_parameters
  Future<void> onDeveloperModeEnabledChanged(bool value) async {
    logger.info(_tag, 'onDeveloperModeEnabledChanged(value: $value)');

    await _dataManager.saveDeveloperModeEnabled(value: value);

    final settingStatus =
        _stringProvider.getString(value ? LocaleKeys.general_switch_on : LocaleKeys.general_switch_off);
    final message = _stringProvider.getString(LocaleKeys.user_setting_developer_mode_update_message, [settingStatus]);
    _snackBarService.showSnackBar(message);

    final currentUserSettings = _userSettings.value.toList();
    final updatedUserSettings = _updateDeveloperModeEnabledSetting(currentUserSettings);

    _userSettings.safeAdd(updatedUserSettings);
  }

  //endregion

  @override
  void dispose() {
    logger.info(_tag, 'dispose()');

    _userSettings.close();

    super.dispose();
  }
}
