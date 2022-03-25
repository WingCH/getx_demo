import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/repositories/bookmark_repository/bookmark_repository.dart';
import 'package:getx_demo/utils/logger.dart';

import '../../repositories/itunes_repository/itunes_repository.dart';
import '../../repositories/itunes_repository/itunes_repository_exception.dart';
import '../../repositories/itunes_repository/models/itunes_search_response.dart';
import 'models/search_albums_page_status.dart';
import 'state.dart';

class SearchAlbumsLogic extends GetxController {
  final SearchAlbumsState state = SearchAlbumsState();
  final ItunesRepository itunesRepository;
  final BookmarkRepository bookmarkRepository;

  SearchAlbumsLogic({
    required this.itunesRepository,
    required this.bookmarkRepository,
  });

  // for set textfield text programmatically
  late TextEditingController searchBarTextEditingController;

  @override
  Future<void> onInit() async {
    super.onInit();
    // init
    searchBarTextEditingController = TextEditingController();
    state.bookmarkedAlbums = bookmarkRepository.getBookmarkedAlbums();

    // fetch Albums when search key changes
    ever<String>(state.searchKey, (String newSearchKey) {
      fetchAlbums(searchKey: newSearchKey);
    });
  }

  void onSelectPopularKey({required String searchKey}) {
    // set 'searchKey' to search bar manually
    searchBarTextEditingController.text = searchKey;
    onSearch(searchKey: searchKey);
  }

  void onSearch({required String searchKey}) {
    if (searchKey.isEmpty) {
      state.pageStatus.value = SearchAlbumsPageStatus.initial;
    } else {
      state.searchKey.value = searchKey;
    }
  }

  Future<void> onBookmark({
    required ItunesAlbum itunesAlbum,
  }) async {
    try {
      await bookmarkRepository.bookmarkOrUnbookmarkAlbums(
        itunesAlbum: itunesAlbum,
      );
    } catch (e, s) {
      LoggerService().e(e.toString(), error: e, stackTrace: s);
      Get.snackbar(
        'Bookmark Error',
        e.toString(),
        duration: const Duration(seconds: 1),
      );
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
