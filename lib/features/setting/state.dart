import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../generated/l10n.dart';

class SettingState {
  // All Supported Locales
  final List<Locale> supportedLocales = S.delegate.supportedLocales;

  // All ThemeMode
  final List<ThemeMode> allThemeModes = ThemeMode.values;
  late Rx<Locale> currentLocale;
  late Rx<ThemeMode> currentThemeMode;
}
