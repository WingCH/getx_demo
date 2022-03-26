import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import '../generated/l10n.dart';
import '../repositories/app_setting_repository/app_setting_repository.dart';
import '../theme/custom_theme.dart';
import 'routes.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.appSettingRepository,
  }) : super(key: key);

  final AppSettingRepository appSettingRepository;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        locale: appSettingRepository.getLocale().value,
        fallbackLocale: const Locale('en'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        themeMode: ThemeMode.dark,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        title: 'GetX Demo',
        initialRoute: Routes.home,
        getPages: Routes.pages,
      );
    });
  }
}
