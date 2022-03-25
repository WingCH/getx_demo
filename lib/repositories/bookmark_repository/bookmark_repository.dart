import 'package:get/get.dart';

import '../itunes_repository/models/itunes_search_response.dart';

abstract class BookmarkRepository {
  Future<void> bookmarkOrUnbookmarkAlbums({
    required ItunesAlbum itunesAlbum,
  });

  Rx<List<ItunesAlbum>> getBookmarkedAlbums();
}
