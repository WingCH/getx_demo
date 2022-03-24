import 'models/itunes_search_response.dart';

abstract class ItunesRepository {
  Future<List<ItunesAlbum>> getAlbums({
    required String term,
    required String entity,
  });
}
