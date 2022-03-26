import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../repositories/app_setting_repository/app_setting_repository.dart';
import 'state.dart';

class SettingLogic extends GetxController {
  final SettingState state = SettingState();
  final AppSettingRepository appSettingRepository;

  SettingLogic({required this.appSettingRepository});

  @override
  void onInit() {
    super.onInit();
    state.currentLocale = appSettingRepository.getLocale();
    state.currentThemeMode = appSettingRepository.getThemeMode();
  }

  void updateLocale({required Locale locale}) {
    appSettingRepository.updateLocale(locale: locale);
    Get.updateLocale(locale);
  }

  void updateThemeMode({required ThemeMode themeMode}) {
    appSettingRepository.updateThemeMode(themeMode: themeMode);
    Get.changeThemeMode(themeMode);
  }
}
