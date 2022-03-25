import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          children: [
            Text(S.of(context).settingPageGeneral),
            ...state.supportedLocales.map((locale) {
              return Obx(() {
                return RadioListTile<Locale>(
                  value: locale,
                  groupValue: state.currentLocale.value,
                  title: Text(locale.toString()),
                  onChanged: (locale) {
                    if (locale != null) {
                      logic.updateLocale(locale: locale);
                    }
                  },
                );
              });
            }).toList()
          ],
        ),
      ),
    );
  }
}
