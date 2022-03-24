// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itunes_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItunesSearchResponse _$$_ItunesSearchResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ItunesSearchResponse(
      resultCount: json['resultCount'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ItunesAlbum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ItunesSearchResponseToJson(
        _$_ItunesSearchResponse instance) =>
    <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };

_$_ItunesAlbum _$$_ItunesAlbumFromJson(Map<String, dynamic> json) =>
    _$_ItunesAlbum(
      wrapperType: json['wrapperType'] as String,
      collectionType: json['collectionType'] as String?,
      artistId: json['artistId'] as int?,
      collectionId: json['collectionId'] as int?,
      amgArtistId: json['amgArtistId'] as int?,
      artistName: json['artistName'] as String,
      collectionName: json['collectionName'] as String,
      collectionCensoredName: json['collectionCensoredName'] as String?,
      artistViewUrl: json['artistViewUrl'] as String?,
      collectionViewUrl: json['collectionViewUrl'] as String?,
      artworkUrl60: json['artworkUrl60'] as String?,
      artworkUrl100: json['artworkUrl100'] as String?,
      collectionPrice: (json['collectionPrice'] as num?)?.toDouble(),
      collectionExplicitness: json['collectionExplicitness'] as String,
      trackCount: json['trackCount'] as int?,
      copyright: json['copyright'] as String?,
      country: json['country'] as String,
      currency: json['currency'] as String?,
      releaseDate: json['releaseDate'] as String?,
      primaryGenreName: json['primaryGenreName'] as String?,
      contentAdvisoryRating: json['contentAdvisoryRating'] as String?,
    );

Map<String, dynamic> _$$_ItunesAlbumToJson(_$_ItunesAlbum instance) =>
    <String, dynamic>{
      'wrapperType': instance.wrapperType,
      'collectionType': instance.collectionType,
      'artistId': instance.artistId,
      'collectionId': instance.collectionId,
      'amgArtistId': instance.amgArtistId,
      'artistName': instance.artistName,
      'collectionName': instance.collectionName,
      'collectionCensoredName': instance.collectionCensoredName,
      'artistViewUrl': instance.artistViewUrl,
      'collectionViewUrl': instance.collectionViewUrl,
      'artworkUrl60': instance.artworkUrl60,
      'artworkUrl100': instance.artworkUrl100,
      'collectionPrice': instance.collectionPrice,
      'collectionExplicitness': instance.collectionExplicitness,
      'trackCount': instance.trackCount,
      'copyright': instance.copyright,
      'country': instance.country,
      'currency': instance.currency,
      'releaseDate': instance.releaseDate,
      'primaryGenreName': instance.primaryGenreName,
      'contentAdvisoryRating': instance.contentAdvisoryRating,
    };
