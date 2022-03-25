import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widgets/albums_list_widget.dart';
import '../../common_widgets/error_message_widget.dart';
import '../../repositories/bookmark_repository/bookmark_repository.dart';
import '../../repositories/itunes_repository/itunes_repository.dart';
import 'logic.dart';
import 'models/search_albums_page_status.dart';
import 'state.dart';
import 'widgets/search_albums_popular_searches_widget.dart';

class SearchAlbumsPage extends StatelessWidget {
  final SearchAlbumsLogic logic;
  final SearchAlbumsState state;

  SearchAlbumsPage({
    Key? key,
    required ItunesRepository itunesRepository,
    required BookmarkRepository bookmarkRepository,
  })  : logic = Get.put(
          SearchAlbumsLogic(
            itunesRepository: itunesRepository,
            bookmarkRepository: bookmarkRepository,
          ),
        ),
        state = Get.find<SearchAlbumsLogic>().state,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          TextField(
            controller: logic.textEditingController,
            decoration: const InputDecoration(
              labelText: '專輯名稱',
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (String input) {
              logic.onSearch(searchKey: input);
            },
          ),
          Expanded(
            child: Obx(() {
              SearchAlbumsPageStatus pageStatus = state.pageStatus.value;
              switch (pageStatus) {
                case SearchAlbumsPageStatus.initial:
                  return SearchAlbumsPopularSearchesWidget(
                    onSearch: (newSearchKey) {
                      logic.onSelectPopularKey(searchKey: newSearchKey);
                    },
                  );
                case SearchAlbumsPageStatus.loading:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case SearchAlbumsPageStatus.success:
                  return AlbumsListWidget(
                    albums: state.itunesAlbums.value,
                    bookmarkedAlbums: state.bookmarkedAlbums.value,
                    onBookmark: (albums) {
                      logic.onBookmark(itunesAlbum: albums);
                    },
                  );
                case SearchAlbumsPageStatus.failure:
                  return ErrorMessageWidget(
                    errorMessage: state.errorMessage.value.toString(),
                  );
              }
            }),
          )
        ],
      ),
    );
  }
}
