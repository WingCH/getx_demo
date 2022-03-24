// To parse this JSON data, do
//
//     final itunesSearchResponse = itunesSearchResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'itunes_search_response.freezed.dart';

part 'itunes_search_response.g.dart';

ItunesSearchResponse itunesSearchResponseFromJson(String str) =>
    ItunesSearchResponse.fromJson(json.decode(str));

String itunesSearchResponseToJson(ItunesSearchResponse data) =>
    json.encode(data.toJson());

@freezed
class ItunesSearchResponse with _$ItunesSearchResponse {
  const factory ItunesSearchResponse({
    required int resultCount,
    required List<ItunesAlbum> results,
  }) = _ItunesSearchResponse;

  factory ItunesSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ItunesSearchResponseFromJson(json);
}

@freezed
class ItunesAlbum with _$ItunesAlbum {
  const factory ItunesAlbum({
    required String wrapperType,
    String? collectionType,
    int? artistId,
    int? collectionId,
    int? amgArtistId,
    required String artistName,
    required String collectionName,
    String? collectionCensoredName,
    String? artistViewUrl,
    String? collectionViewUrl,
    String? artworkUrl60,
    String? artworkUrl100,
    double? collectionPrice,
    required String collectionExplicitness,
    int? trackCount,
    String? copyright,
    required String country,
    String? currency,
    String? releaseDate,
    String? primaryGenreName,
    String? contentAdvisoryRating,
  }) = _ItunesAlbum;

  factory ItunesAlbum.fromJson(Map<String, dynamic> json) => _$ItunesAlbumFromJson(json);
}
