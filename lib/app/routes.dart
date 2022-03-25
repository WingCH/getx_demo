import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_demo/features/home/view.dart';
import 'package:getx_demo/features/setting/view.dart';

class Routes {
  static const home = '/home';
  static const setting = '/setting';

  static List<GetPage> get pages {
    return [
      GetPage(
        name: Routes.home,
        page: () => HomePage(),
      ),
      GetPage(
        name: Routes.setting,
        page: () => SettingPage(),
      ),
    ];
  }
}
