import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AppSettingRepository {
  Future<void> updateLocale({
    required Locale locale,
  });

  Rx<Locale> getLocale();

  Future<void> updateThemeMode({
    required ThemeMode themeMode,
  });

  Rx<ThemeMode> getThemeMode();
}
