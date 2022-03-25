import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_demo/repositories/itunes_repository/models/itunes_search_response.dart';

import 'bookmark_repository.dart';

// ref: https://bloclibrary.dev/#/fluttertodostutorial
class LocalBookmarkRepository extends BookmarkRepository {
  static const boxKey = 'localBookmarkRepositoryBox';
  static const bookmarkAlbumsKey = 'bookmarkAlbums';

  final GetStorage box;
  final Rx<List<ItunesAlbum>> _bookmarkAlbums = Rx<List<ItunesAlbum>>([]);

  LocalBookmarkRepository({
    required this.box,
  }) {
    _init();
  }

  void _init() {
    // first get data
    List<dynamic> list = box.read(bookmarkAlbumsKey) ?? [];
    List<ItunesAlbum> bookmarkedAlbums = list.map<ItunesAlbum>((element) {
      return ItunesAlbum.fromJson(element);
    }).toList();
    _bookmarkAlbums.value = bookmarkedAlbums;
    //

    // listen local storage change
    box.listenKey(bookmarkAlbumsKey, (value) {
      List<ItunesAlbum> bookmarkedAlbums =
          (value as List<dynamic>).map<ItunesAlbum>((element) {
        return ItunesAlbum.fromJson(element);
      }).toList();
      _bookmarkAlbums.value = bookmarkedAlbums;
    });
  }

  @override
  Future<void> bookmarkOrUnbookmarkAlbums({
    required ItunesAlbum itunesAlbum,
  }) async {
    try {
      List<ItunesAlbum> currentList = _bookmarkAlbums.value.toList();
      // -1 = not found
      int index = currentList.indexOf(itunesAlbum);
      if (index == -1) {
        currentList.add(itunesAlbum);
      } else {
        currentList.removeAt(index);
      }
      updateBookmarkAlbums(newList: currentList);
    } catch (e, s) {
      rethrow;
    }
  }

  void updateBookmarkAlbums({
    required List<ItunesAlbum> newList,
  }) {
    List<Map<String, dynamic>> rawData =
        newList.map((e) => e.toJson()).toList();
    box.write(bookmarkAlbumsKey, rawData);
  }

  @override
  Rx<List<ItunesAlbum>> getBookmarkedAlbums() {
    return _bookmarkAlbums;
  }
}
