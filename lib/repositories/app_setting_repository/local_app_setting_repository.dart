import 'dart:ui';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get_storage/get_storage.dart';

import 'app_setting_repository.dart';

class LocalAppSettingRepository extends AppSettingRepository {
  static const boxKey = 'localAppSettingRepositoryBox';
  static const languageCodeKey = 'languageCode';
  static const scriptCodeKey = 'scriptCode';
  static const countryCodeKey = 'countryCode';

  final GetStorage box;
  final Locale defaultLocale;
  late Rx<Locale> _local;

  LocalAppSettingRepository({
    required this.box,
    required this.defaultLocale,
  }) {
    _init();
  }

  void _init() {
    Locale? current = _getLocaleFromLocal();
    if (current == null) {
      _local = Rx<Locale>(defaultLocale);
    } else {
      _local = Rx<Locale>(current);
    }
  }

  void fetchLocal() {
    Locale? current = _getLocaleFromLocal();
    if (current == null) {
      _local.value = defaultLocale;
    } else {
      _local.value = current;
    }
  }

  Locale? _getLocaleFromLocal() {
    String? languageCode = box.read(languageCodeKey);
    String? scriptCode = box.read(scriptCodeKey);
    String? countryCode = box.read(countryCodeKey);
    if (languageCode == null) {
      return null;
    } else {
      return Locale.fromSubtags(
        languageCode: languageCode,
        scriptCode: scriptCode,
        countryCode: countryCode,
      );
    }
  }

  @override
  Rx<Locale> getLocale() {
    return _local;
  }

  @override
  Future<void> updateLocale({required Locale locale}) async {
    String languageCode = locale.languageCode;
    String? scriptCode = locale.scriptCode;
    String? countryCode = locale.countryCode;
    box.write(languageCodeKey, languageCode);
    box.write(scriptCodeKey, scriptCode);
    box.write(countryCodeKey, countryCode);

    fetchLocal();
  }
}
