import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../generated/l10n.dart';
import 'logic.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);

  final logic = Get.put(SettingLogic());
  final state = Get.find<SettingLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.current.settingPageTitle),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text(S.current.settingPageGeneral),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: Text(S.current.settingPageLanguage),
                value: const Text('English'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
