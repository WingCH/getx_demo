import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widgets/albums_list_widget.dart';
import '../../common_widgets/empty_widget.dart';
import '../../generated/l10n.dart';
import '../../repositories/bookmark_repository/bookmark_repository.dart';
import 'logic.dart';
import 'state.dart';

class BookmarkedAlbumsPage extends StatelessWidget {
  final BookmarkedAlbumsLogic logic;
  final BookmarkedAlbumsState state;

  BookmarkedAlbumsPage({
    Key? key,
    required BookmarkRepository bookmarkRepository,
  })  : logic = Get.put(
          BookmarkedAlbumsLogic(
            bookmarkRepository: bookmarkRepository,
          ),
        ),
        state = Get.find<BookmarkedAlbumsLogic>().state,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).bookmarkPageTitle),
        actions: [
          IconButton(
            tooltip: S.of(context).homePageSettingButton,
            icon: const Icon(Icons.settings),
            onPressed: logic.onSetting,
          )
        ],
      ),
      body: Obx(() {
        return state.bookmarkedAlbums.value.isEmpty
            ? EmptyWidget(
                message: S.of(context).bookmarkPageEmptyMessage,
              )
            : AlbumsListWidget(
                albums: state.bookmarkedAlbums.value,
                bookmarkedAlbums: state.bookmarkedAlbums.value,
                onBookmark: (albums) {
                  logic.onBookmark(itunesAlbum: albums);
                },
              );
      }),
    );
  }
}
