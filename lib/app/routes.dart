import 'package:get/get.dart';
import 'package:getx_demo/features/home/view.dart';
import 'package:getx_demo/features/setting/view.dart';
import 'package:getx_demo/repositories/app_setting_repository/app_setting_repository.dart';

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
        page: () => SettingPage(
          appSettingRepository: Get.find<AppSettingRepository>(),
        ),
      ),
    ];
  }
}
