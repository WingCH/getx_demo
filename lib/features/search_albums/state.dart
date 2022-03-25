import 'package:get/get.dart';

import '../../repositories/itunes_repository/models/itunes_search_response.dart';
import 'models/search_albums_page_status.dart';

class SearchAlbumsState {
  final Rx<SearchAlbumsPageStatus> pageStatus =
      Rx<SearchAlbumsPageStatus>(SearchAlbumsPageStatus.initial);
  final Rx<String?> errorMessage = Rx<String?>(null);

  final Rx<String> searchKey = Rx<String>('');
  final Rx<List<ItunesAlbum>> itunesAlbums = Rx<List<ItunesAlbum>>([]);
  late Rx<List<ItunesAlbum>> bookmarkedAlbums;
}
