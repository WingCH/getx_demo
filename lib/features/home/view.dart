import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/features/home/models/home_tab.dart';

import '../../repositories/bookmark_repository/bookmark_repository.dart';
import '../../repositories/itunes_repository/itunes_repository.dart';
import '../search_albums/view.dart';
import 'logic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final logic = Get.put(HomeLogic());
  final state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: state.selectedTab.value.index,
          children: [
            SearchAlbumsPage(
              itunesRepository: Get.find<ItunesRepository>(),
              bookmarkRepository: Get.find<BookmarkRepository>(),
            ),
            Container(),
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: state.selectedTab.value.index,
          onTap: (int index) {
            logic.switchTab(index: index);
          },
          items: state.tabs.map((tab) {
            return BottomNavigationBarItem(
              icon: tab == HomeTab.search
                  ? const Icon(Icons.search)
                  : tab == HomeTab.bookmark
                      ? const Icon(Icons.bookmarks_outlined)
                      : const SizedBox.shrink(),
              label: tab.name,
            );
          }).toList(),
        );
      }),
    );
  }
}
