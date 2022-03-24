import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:getx_demo/repositories/itunes_repository/models/itunes_search_response.dart';

import 'itunes_repository.dart';
import 'itunes_repository_exception.dart';

class RealItunesRepository extends ItunesRepository {
  RealItunesRepository({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<ItunesAlbum>> getAlbums({
    required String term,
    required String entity,
  }) async {
    try {
      final Response response = await _dio.get('/search', queryParameters: {
        'term': term,
        'entity': entity,
      });
      ItunesSearchResponse itunesSearchResponse =
          ItunesSearchResponse.fromJson(json.decode(response.data));
      return itunesSearchResponse.results;
    } on DioError catch (dioError) {
      throw ItunesRepositoryNetworkException(dioError: dioError);
    } catch (error) {
      throw ItunesRepositoryUnknownException(catchObject: error);
    }
  }
}
