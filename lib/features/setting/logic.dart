import 'dart:ui';

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
  }

  void updateLocale({required Locale locale}) {
    appSettingRepository.updateLocale(locale: locale);
    Get.updateLocale(locale);
  }
}
