import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get_storage/get_storage.dart';

import 'app_setting_repository.dart';

class LocalAppSettingRepository extends AppSettingRepository {
  static const boxKey = 'localAppSettingRepositoryBox';

  //-- locale
  static const languageCodeKey = 'languageCode';
  static const scriptCodeKey = 'scriptCode';
  static const countryCodeKey = 'countryCode';

  // themeMode
  static const themeModeKey = 'themeMode';

  final GetStorage box;
  final Locale defaultLocale;
  final ThemeMode defaultThemeMode;
  Rx<Locale>? _localRx;
  Rx<ThemeMode>? _themeModeRx;

  LocalAppSettingRepository({
    required this.box,
    required this.defaultLocale,
    required this.defaultThemeMode,
  }) {
    _init();
  }

  void _init() {
    _fetchLocale();
    _fetchThemeMode();
  }

  void _fetchLocale() {
    Locale locale;

    String? languageCode = box.read(languageCodeKey);
    String? scriptCode = box.read(scriptCodeKey);
    String? countryCode = box.read(countryCodeKey);

    if (languageCode == null) {
      locale = defaultLocale;
    } else {
      locale = Locale.fromSubtags(
        languageCode: languageCode,
        scriptCode: scriptCode,
        countryCode: countryCode,
      );
    }

    if (_localRx == null) {
      _localRx = Rx<Locale>(locale);
    } else {
      _localRx!.value = locale;
    }
  }

  void _fetchThemeMode() {
    ThemeMode? themeMode = _getThemeModeFromLocalStorage() ?? defaultThemeMode;
    if (_themeModeRx == null) {
      _themeModeRx = Rx<ThemeMode>(themeMode);
    } else {
      _themeModeRx!.value = themeMode;
    }
  }

  ThemeMode? _getThemeModeFromLocalStorage() {
    String? themeModeRaw = box.read(themeModeKey);
    if (themeModeRaw == null) {
      return null;
    } else {
      return ThemeMode.values.byName(themeModeRaw);
    }
  }

  @override
  Rx<Locale> getLocale() {
    return _localRx!;
  }

  @override
  Future<void> updateLocale({required Locale locale}) async {
    String languageCode = locale.languageCode;
    String? scriptCode = locale.scriptCode;
    String? countryCode = locale.countryCode;
    box.write(languageCodeKey, languageCode);
    box.write(scriptCodeKey, scriptCode);
    box.write(countryCodeKey, countryCode);

    _fetchLocale();
  }

  @override
  Rx<ThemeMode> getThemeMode() {
    return _themeModeRx!;
  }

  @override
  Future<void> updateThemeMode({required ThemeMode themeMode}) async {
    String themeModeRaw = themeMode.name;
    box.write(themeModeKey, themeModeRaw);

    _fetchThemeMode();
  }
}
