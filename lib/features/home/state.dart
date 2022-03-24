import 'package:get/get.dart';

import 'models/home_tab.dart';

class HomeState {
  final List<HomeTab> tabs = [
    HomeTab.search,
    HomeTab.bookmark,
  ];

  Rx<HomeTab> selectedTab = Rx<HomeTab>(HomeTab.search);
}
