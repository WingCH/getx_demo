import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class SearchAlbumsPage extends StatelessWidget {
  SearchAlbumsPage({Key? key}) : super(key: key);

  final logic = Get.put(SearchAlbumsLogic());
  final state = Get.find<SearchAlbumsLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('SearchAlbumsPage'),
      ),
    );
  }
}
