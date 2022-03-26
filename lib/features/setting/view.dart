import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/utils/intl_extension.dart';

import '../../generated/l10n.dart';
import '../../repositories/app_setting_repository/app_setting_repository.dart';
import 'logic.dart';
import 'state.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key, required AppSettingRepository appSettingRepository})
      : logic =
            Get.put(SettingLogic(appSettingRepository: appSettingRepository)),
        state = Get.find<SettingLogic>().state,
        super(key: key);

  final SettingLogic logic;
  final SettingState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).settingPageTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text(S.of(context).settingPageLanguage),
            ),
            ...state.supportedLocales.map((locale) {
              return Obx(() {
                return RadioListTile<Locale>(
                  value: locale,
                  groupValue: state.currentLocale.value,
                  title: Text(
                    'settingPageLanguage${locale.toString().capitalize}'.locale(
                      fallback: locale.toString(),
                    ),
                  ),
                  onChanged: (newLocale) {
                    if (newLocale != null) {
                      logic.updateLocale(locale: newLocale);
                    }
                  },
                );
              });
            }).toList(),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text(S.of(context).settingPageTheme),
            ),
            ...state.allThemeModes.map((themeMode) {
              return Obx(() {
                return RadioListTile<ThemeMode>(
                  value: themeMode,
                  groupValue: state.currentThemeMode.value,
                  title: Text(
                    'settingPageTheme${themeMode.name.capitalize}'.locale(
                      fallback: themeMode.name,
                    ),
                  ),
                  onChanged: (newThemeMode) {
                    if (newThemeMode != null) {
                      logic.updateThemeMode(themeMode: newThemeMode);
                    }
                  },
                );
              });
            }).toList(),
          ],
        ),
      ),
    );
  }
}
