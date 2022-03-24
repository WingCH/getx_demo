// ignore_for_file: constant_identifier_names
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_demo/features/home/view.dart';

class Routes {
  static const Home = '/home';

  static List<GetPage> get pages {
    return [
      GetPage(
        name: Routes.Home,
        page: () => HomePage(),
      ),
    ];
  }
}
