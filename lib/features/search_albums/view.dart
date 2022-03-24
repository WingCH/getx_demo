import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../repositories/itunes_repository/itunes_repository.dart';
import 'logic.dart';
import 'state.dart';

class SearchAlbumsPage extends StatelessWidget {
  final SearchAlbumsLogic logic;
  final SearchAlbumsState state;

  SearchAlbumsPage({
    Key? key,
    required ItunesRepository itunesRepository,
  })  : logic = Get.put(SearchAlbumsLogic(itunesRepository: itunesRepository)),
        state = Get.find<SearchAlbumsLogic>().state,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Search'),
      ),
      body: const Center(
        child: Text('SearchAlbumsPage'),
      ),
    );
  }
}
