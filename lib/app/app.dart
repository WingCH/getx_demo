import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      initialRoute: Routes.Home,
      getPages: Routes.pages,
    );
  }
}
