import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../repositories/itunes_repository/itunes_repository.dart';
import '../../repositories/itunes_repository/itunes_repository_exception.dart';
import 'models/search_albums_page_status.dart';
import 'state.dart';

class SearchAlbumsLogic extends GetxController {
  final SearchAlbumsState state = SearchAlbumsState();
  final ItunesRepository itunesRepository;

  SearchAlbumsLogic({
    required this.itunesRepository,
  });

  // for set textfield text programmatically
  late TextEditingController textEditingController;

  @override
  Future<void> onInit() async {
    super.onInit();

    textEditingController = TextEditingController();

    debounce<String>(state.searchKey, (String newSearchKey) {
      fetchAlbums(searchKey: newSearchKey);
    }, time: const Duration(milliseconds: 500));
  }

  void onSelectPopularKey({required String searchKey}) {
    textEditingController.text = searchKey;
    onSearch(searchKey: searchKey);
  }

  void onSearch({required String searchKey}) {
    if (searchKey.isEmpty) {
      state.pageStatus.value = SearchAlbumsPageStatus.initial;
    } else {
      state.searchKey.value = searchKey;
    }
  }

  Future<void> fetchAlbums({required String searchKey}) async {
    try {
      state.errorMessage.value = null;
      state.pageStatus.value = SearchAlbumsPageStatus.loading;
      var data =
          await itunesRepository.getAlbums(term: searchKey, entity: "album");
      state.itunesAlbums.value = data;
      state.pageStatus.value = SearchAlbumsPageStatus.success;
    } on ItunesRepositoryException catch (e) {
      state.errorMessage.value = e.toString();
      state.pageStatus.value = SearchAlbumsPageStatus.failure;
    } catch (e) {
      state.errorMessage.value = e.toString();
      state.pageStatus.value = SearchAlbumsPageStatus.failure;
    }
  }
}
