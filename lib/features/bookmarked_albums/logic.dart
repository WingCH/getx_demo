import 'package:get/get.dart';

import '../../repositories/bookmark_repository/bookmark_repository.dart';
import '../../repositories/itunes_repository/models/itunes_search_response.dart';
import '../../utils/logger.dart';
import 'state.dart';

class BookmarkedAlbumsLogic extends GetxController {
  final BookmarkedAlbumsState state = BookmarkedAlbumsState();
  final BookmarkRepository bookmarkRepository;

  BookmarkedAlbumsLogic({
    required this.bookmarkRepository,
  });

  @override
  void onInit() {
    super.onInit();
    state.bookmarkedAlbums = bookmarkRepository.getBookmarkedAlbums();
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
}
