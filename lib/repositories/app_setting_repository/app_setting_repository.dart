import 'dart:ui';

import 'package:get/get.dart';

abstract class AppSettingRepository {
  Future<void> updateLocale({
    required Locale locale,
  });

  Rx<Locale> getLocale();
}
