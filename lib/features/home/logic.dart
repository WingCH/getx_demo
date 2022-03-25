import 'package:get/get.dart';

import 'models/home_tab.dart';
import 'state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();

  void onSwitchTab({
    required int index,
  }) {
    HomeTab tab = state.tabs[index];
    state.selectedTab.value = tab;
  }
}
