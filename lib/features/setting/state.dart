import 'dart:ui';

import 'package:get/get.dart';

import '../../generated/l10n.dart';

class SettingState {
  final List<Locale> supportedLocales = S.delegate.supportedLocales;
  late Rx<Locale> currentLocale;
}
