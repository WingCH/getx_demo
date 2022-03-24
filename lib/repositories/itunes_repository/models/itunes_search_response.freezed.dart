// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'itunes_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItunesSearchResponse _$ItunesSearchResponseFromJson(Map<String, dynamic> json) {
  return _ItunesSearchResponse.fromJson(json);
}

/// @nodoc
class _$ItunesSearchResponseTearOff {
  const _$ItunesSearchResponseTearOff();

  _ItunesSearchResponse call(
      {required int resultCount, required List<ItunesAlbum> results}) {
    return _ItunesSearchResponse(
      resultCount: resultCount,
      results: results,
    );
  }

  ItunesSearchResponse fromJson(Map<String, Object?> json) {
    return ItunesSearchResponse.fromJson(json);
  }
}

/// @nodoc
const $ItunesSearchResponse = _$ItunesSearchResponseTearOff();

/// @nodoc
mixin _$ItunesSearchResponse {
  int get resultCount => throw _privateConstructorUsedError;
  List<ItunesAlbum> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItunesSearchResponseCopyWith<ItunesSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItunesSearchResponseCopyWith<$Res> {
  factory $ItunesSearchResponseCopyWith(ItunesSearchResponse value,
          $Res Function(ItunesSearchResponse) then) =
      _$ItunesSearchResponseCopyWithImpl<$Res>;
  $Res call({int resultCount, List<ItunesAlbum> results});
}

/// @nodoc
class _$ItunesSearchResponseCopyWithImpl<$Res>
    implements $ItunesSearchResponseCopyWith<$Res> {
  _$ItunesSearchResponseCopyWithImpl(this._value, this._then);

  final ItunesSearchResponse _value;
  // ignore: unused_field
  final $Res Function(ItunesSearchResponse) _then;

  @override
  $Res call({
    Object? resultCount = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ItunesAlbum>,
    ));
  }
}

/// @nodoc
abstract class _$ItunesSearchResponseCopyWith<$Res>
    implements $ItunesSearchResponseCopyWith<$Res> {
  factory _$ItunesSearchResponseCopyWith(_ItunesSearchResponse value,
          $Res Function(_ItunesSearchResponse) then) =
      __$ItunesSearchResponseCopyWithImpl<$Res>;
  @override
  $Res call({int resultCount, List<ItunesAlbum> results});
}

/// @nodoc
class __$ItunesSearchResponseCopyWithImpl<$Res>
    extends _$ItunesSearchResponseCopyWithImpl<$Res>
    implements _$ItunesSearchResponseCopyWith<$Res> {
  __$ItunesSearchResponseCopyWithImpl(
      _ItunesSearchResponse _value, $Res Function(_ItunesSearchResponse) _then)
      : super(_value, (v) => _then(v as _ItunesSearchResponse));

  @override
  _ItunesSearchResponse get _value => super._value as _ItunesSearchResponse;

  @override
  $Res call({
    Object? resultCount = freezed,
    Object? results = freezed,
  }) {
    return _then(_ItunesSearchResponse(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ItunesAlbum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItunesSearchResponse implements _ItunesSearchResponse {
  const _$_ItunesSearchResponse(
      {required this.resultCount, required this.results});

  factory _$_ItunesSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ItunesSearchResponseFromJson(json);

  @override
  final int resultCount;
  @override
  final List<ItunesAlbum> results;

  @override
  String toString() {
    return 'ItunesSearchResponse(resultCount: $resultCount, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItunesSearchResponse &&
            const DeepCollectionEquality()
                .equals(other.resultCount, resultCount) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resultCount),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$ItunesSearchResponseCopyWith<_ItunesSearchResponse> get copyWith =>
      __$ItunesSearchResponseCopyWithImpl<_ItunesSearchResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItunesSearchResponseToJson(this);
  }
}

abstract class _ItunesSearchResponse implements ItunesSearchResponse {
  const factory _ItunesSearchResponse(
      {required int resultCount,
      required List<ItunesAlbum> results}) = _$_ItunesSearchResponse;

  factory _ItunesSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_ItunesSearchResponse.fromJson;

  @override
  int get resultCount;
  @override
  List<ItunesAlbum> get results;
  @override
  @JsonKey(ignore: true)
  _$ItunesSearchResponseCopyWith<_ItunesSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ItunesAlbum _$ItunesAlbumFromJson(Map<String, dynamic> json) {
  return _ItunesAlbum.fromJson(json);
}

/// @nodoc
class _$ItunesAlbumTearOff {
  const _$ItunesAlbumTearOff();

  _ItunesAlbum call(
      {required String wrapperType,
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
      String? contentAdvisoryRating}) {
    return _ItunesAlbum(
      wrapperType: wrapperType,
      collectionType: collectionType,
      artistId: artistId,
      collectionId: collectionId,
      amgArtistId: amgArtistId,
      artistName: artistName,
      collectionName: collectionName,
      collectionCensoredName: collectionCensoredName,
      artistViewUrl: artistViewUrl,
      collectionViewUrl: collectionViewUrl,
      artworkUrl60: artworkUrl60,
      artworkUrl100: artworkUrl100,
      collectionPrice: collectionPrice,
      collectionExplicitness: collectionExplicitness,
      trackCount: trackCount,
      copyright: copyright,
      country: country,
      currency: currency,
      releaseDate: releaseDate,
      primaryGenreName: primaryGenreName,
      contentAdvisoryRating: contentAdvisoryRating,
    );
  }

  ItunesAlbum fromJson(Map<String, Object?> json) {
    return ItunesAlbum.fromJson(json);
  }
}

/// @nodoc
const $ItunesAlbum = _$ItunesAlbumTearOff();

/// @nodoc
mixin _$ItunesAlbum {
  String get wrapperType => throw _privateConstructorUsedError;
  String? get collectionType => throw _privateConstructorUsedError;
  int? get artistId => throw _privateConstructorUsedError;
  int? get collectionId => throw _privateConstructorUsedError;
  int? get amgArtistId => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  String get collectionName => throw _privateConstructorUsedError;
  String? get collectionCensoredName => throw _privateConstructorUsedError;
  String? get artistViewUrl => throw _privateConstructorUsedError;
  String? get collectionViewUrl => throw _privateConstructorUsedError;
  String? get artworkUrl60 => throw _privateConstructorUsedError;
  String? get artworkUrl100 => throw _privateConstructorUsedError;
  double? get collectionPrice => throw _privateConstructorUsedError;
  String get collectionExplicitness => throw _privateConstructorUsedError;
  int? get trackCount => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get primaryGenreName => throw _privateConstructorUsedError;
  String? get contentAdvisoryRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItunesAlbumCopyWith<ItunesAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItunesAlbumCopyWith<$Res> {
  factory $ItunesAlbumCopyWith(
          ItunesAlbum value, $Res Function(ItunesAlbum) then) =
      _$ItunesAlbumCopyWithImpl<$Res>;
  $Res call(
      {String wrapperType,
      String? collectionType,
      int? artistId,
      int? collectionId,
      int? amgArtistId,
      String artistName,
      String collectionName,
      String? collectionCensoredName,
      String? artistViewUrl,
      String? collectionViewUrl,
      String? artworkUrl60,
      String? artworkUrl100,
      double? collectionPrice,
      String collectionExplicitness,
      int? trackCount,
      String? copyright,
      String country,
      String? currency,
      String? releaseDate,
      String? primaryGenreName,
      String? contentAdvisoryRating});
}

/// @nodoc
class _$ItunesAlbumCopyWithImpl<$Res> implements $ItunesAlbumCopyWith<$Res> {
  _$ItunesAlbumCopyWithImpl(this._value, this._then);

  final ItunesAlbum _value;
  // ignore: unused_field
  final $Res Function(ItunesAlbum) _then;

  @override
  $Res call({
    Object? wrapperType = freezed,
    Object? collectionType = freezed,
    Object? artistId = freezed,
    Object? collectionId = freezed,
    Object? amgArtistId = freezed,
    Object? artistName = freezed,
    Object? collectionName = freezed,
    Object? collectionCensoredName = freezed,
    Object? artistViewUrl = freezed,
    Object? collectionViewUrl = freezed,
    Object? artworkUrl60 = freezed,
    Object? artworkUrl100 = freezed,
    Object? collectionPrice = freezed,
    Object? collectionExplicitness = freezed,
    Object? trackCount = freezed,
    Object? copyright = freezed,
    Object? country = freezed,
    Object? currency = freezed,
    Object? releaseDate = freezed,
    Object? primaryGenreName = freezed,
    Object? contentAdvisoryRating = freezed,
  }) {
    return _then(_value.copyWith(
      wrapperType: wrapperType == freezed
          ? _value.wrapperType
          : wrapperType // ignore: cast_nullable_to_non_nullable
              as String,
      collectionType: collectionType == freezed
          ? _value.collectionType
          : collectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: artistId == freezed
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionId: collectionId == freezed
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int?,
      amgArtistId: amgArtistId == freezed
          ? _value.amgArtistId
          : amgArtistId // ignore: cast_nullable_to_non_nullable
              as int?,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: collectionName == freezed
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      collectionCensoredName: collectionCensoredName == freezed
          ? _value.collectionCensoredName
          : collectionCensoredName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistViewUrl: artistViewUrl == freezed
          ? _value.artistViewUrl
          : artistViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionViewUrl: collectionViewUrl == freezed
          ? _value.collectionViewUrl
          : collectionViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      artworkUrl60: artworkUrl60 == freezed
          ? _value.artworkUrl60
          : artworkUrl60 // ignore: cast_nullable_to_non_nullable
              as String?,
      artworkUrl100: artworkUrl100 == freezed
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionPrice: collectionPrice == freezed
          ? _value.collectionPrice
          : collectionPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      collectionExplicitness: collectionExplicitness == freezed
          ? _value.collectionExplicitness
          : collectionExplicitness // ignore: cast_nullable_to_non_nullable
              as String,
      trackCount: trackCount == freezed
          ? _value.trackCount
          : trackCount // ignore: cast_nullable_to_non_nullable
              as int?,
      copyright: copyright == freezed
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryGenreName: primaryGenreName == freezed
          ? _value.primaryGenreName
          : primaryGenreName // ignore: cast_nullable_to_non_nullable
              as String?,
      contentAdvisoryRating: contentAdvisoryRating == freezed
          ? _value.contentAdvisoryRating
          : contentAdvisoryRating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ItunesAlbumCopyWith<$Res>
    implements $ItunesAlbumCopyWith<$Res> {
  factory _$ItunesAlbumCopyWith(
          _ItunesAlbum value, $Res Function(_ItunesAlbum) then) =
      __$ItunesAlbumCopyWithImpl<$Res>;
  @override
  $Res call(
      {String wrapperType,
      String? collectionType,
      int? artistId,
      int? collectionId,
      int? amgArtistId,
      String artistName,
      String collectionName,
      String? collectionCensoredName,
      String? artistViewUrl,
      String? collectionViewUrl,
      String? artworkUrl60,
      String? artworkUrl100,
      double? collectionPrice,
      String collectionExplicitness,
      int? trackCount,
      String? copyright,
      String country,
      String? currency,
      String? releaseDate,
      String? primaryGenreName,
      String? contentAdvisoryRating});
}

/// @nodoc
class __$ItunesAlbumCopyWithImpl<$Res> extends _$ItunesAlbumCopyWithImpl<$Res>
    implements _$ItunesAlbumCopyWith<$Res> {
  __$ItunesAlbumCopyWithImpl(
      _ItunesAlbum _value, $Res Function(_ItunesAlbum) _then)
      : super(_value, (v) => _then(v as _ItunesAlbum));

  @override
  _ItunesAlbum get _value => super._value as _ItunesAlbum;

  @override
  $Res call({
    Object? wrapperType = freezed,
    Object? collectionType = freezed,
    Object? artistId = freezed,
    Object? collectionId = freezed,
    Object? amgArtistId = freezed,
    Object? artistName = freezed,
    Object? collectionName = freezed,
    Object? collectionCensoredName = freezed,
    Object? artistViewUrl = freezed,
    Object? collectionViewUrl = freezed,
    Object? artworkUrl60 = freezed,
    Object? artworkUrl100 = freezed,
    Object? collectionPrice = freezed,
    Object? collectionExplicitness = freezed,
    Object? trackCount = freezed,
    Object? copyright = freezed,
    Object? country = freezed,
    Object? currency = freezed,
    Object? releaseDate = freezed,
    Object? primaryGenreName = freezed,
    Object? contentAdvisoryRating = freezed,
  }) {
    return _then(_ItunesAlbum(
      wrapperType: wrapperType == freezed
          ? _value.wrapperType
          : wrapperType // ignore: cast_nullable_to_non_nullable
              as String,
      collectionType: collectionType == freezed
          ? _value.collectionType
          : collectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: artistId == freezed
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionId: collectionId == freezed
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int?,
      amgArtistId: amgArtistId == freezed
          ? _value.amgArtistId
          : amgArtistId // ignore: cast_nullable_to_non_nullable
              as int?,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: collectionName == freezed
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      collectionCensoredName: collectionCensoredName == freezed
          ? _value.collectionCensoredName
          : collectionCensoredName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistViewUrl: artistViewUrl == freezed
          ? _value.artistViewUrl
          : artistViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionViewUrl: collectionViewUrl == freezed
          ? _value.collectionViewUrl
          : collectionViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      artworkUrl60: artworkUrl60 == freezed
          ? _value.artworkUrl60
          : artworkUrl60 // ignore: cast_nullable_to_non_nullable
              as String?,
      artworkUrl100: artworkUrl100 == freezed
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionPrice: collectionPrice == freezed
          ? _value.collectionPrice
          : collectionPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      collectionExplicitness: collectionExplicitness == freezed
          ? _value.collectionExplicitness
          : collectionExplicitness // ignore: cast_nullable_to_non_nullable
              as String,
      trackCount: trackCount == freezed
          ? _value.trackCount
          : trackCount // ignore: cast_nullable_to_non_nullable
              as int?,
      copyright: copyright == freezed
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryGenreName: primaryGenreName == freezed
          ? _value.primaryGenreName
          : primaryGenreName // ignore: cast_nullable_to_non_nullable
              as String?,
      contentAdvisoryRating: contentAdvisoryRating == freezed
          ? _value.contentAdvisoryRating
          : contentAdvisoryRating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItunesAlbum implements _ItunesAlbum {
  const _$_ItunesAlbum(
      {required this.wrapperType,
      this.collectionType,
      this.artistId,
      this.collectionId,
      this.amgArtistId,
      required this.artistName,
      required this.collectionName,
      this.collectionCensoredName,
      this.artistViewUrl,
      this.collectionViewUrl,
      this.artworkUrl60,
      this.artworkUrl100,
      this.collectionPrice,
      required this.collectionExplicitness,
      this.trackCount,
      this.copyright,
      required this.country,
      this.currency,
      this.releaseDate,
      this.primaryGenreName,
      this.contentAdvisoryRating});

  factory _$_ItunesAlbum.fromJson(Map<String, dynamic> json) =>
      _$$_ItunesAlbumFromJson(json);

  @override
  final String wrapperType;
  @override
  final String? collectionType;
  @override
  final int? artistId;
  @override
  final int? collectionId;
  @override
  final int? amgArtistId;
  @override
  final String artistName;
  @override
  final String collectionName;
  @override
  final String? collectionCensoredName;
  @override
  final String? artistViewUrl;
  @override
  final String? collectionViewUrl;
  @override
  final String? artworkUrl60;
  @override
  final String? artworkUrl100;
  @override
  final double? collectionPrice;
  @override
  final String collectionExplicitness;
  @override
  final int? trackCount;
  @override
  final String? copyright;
  @override
  final String country;
  @override
  final String? currency;
  @override
  final String? releaseDate;
  @override
  final String? primaryGenreName;
  @override
  final String? contentAdvisoryRating;

  @override
  String toString() {
    return 'ItunesAlbum(wrapperType: $wrapperType, collectionType: $collectionType, artistId: $artistId, collectionId: $collectionId, amgArtistId: $amgArtistId, artistName: $artistName, collectionName: $collectionName, collectionCensoredName: $collectionCensoredName, artistViewUrl: $artistViewUrl, collectionViewUrl: $collectionViewUrl, artworkUrl60: $artworkUrl60, artworkUrl100: $artworkUrl100, collectionPrice: $collectionPrice, collectionExplicitness: $collectionExplicitness, trackCount: $trackCount, copyright: $copyright, country: $country, currency: $currency, releaseDate: $releaseDate, primaryGenreName: $primaryGenreName, contentAdvisoryRating: $contentAdvisoryRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItunesAlbum &&
            const DeepCollectionEquality()
                .equals(other.wrapperType, wrapperType) &&
            const DeepCollectionEquality()
                .equals(other.collectionType, collectionType) &&
            const DeepCollectionEquality().equals(other.artistId, artistId) &&
            const DeepCollectionEquality()
                .equals(other.collectionId, collectionId) &&
            const DeepCollectionEquality()
                .equals(other.amgArtistId, amgArtistId) &&
            const DeepCollectionEquality()
                .equals(other.artistName, artistName) &&
            const DeepCollectionEquality()
                .equals(other.collectionName, collectionName) &&
            const DeepCollectionEquality()
                .equals(other.collectionCensoredName, collectionCensoredName) &&
            const DeepCollectionEquality()
                .equals(other.artistViewUrl, artistViewUrl) &&
            const DeepCollectionEquality()
                .equals(other.collectionViewUrl, collectionViewUrl) &&
            const DeepCollectionEquality()
                .equals(other.artworkUrl60, artworkUrl60) &&
            const DeepCollectionEquality()
                .equals(other.artworkUrl100, artworkUrl100) &&
            const DeepCollectionEquality()
                .equals(other.collectionPrice, collectionPrice) &&
            const DeepCollectionEquality()
                .equals(other.collectionExplicitness, collectionExplicitness) &&
            const DeepCollectionEquality()
                .equals(other.trackCount, trackCount) &&
            const DeepCollectionEquality().equals(other.copyright, copyright) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality()
                .equals(other.primaryGenreName, primaryGenreName) &&
            const DeepCollectionEquality()
                .equals(other.contentAdvisoryRating, contentAdvisoryRating));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(wrapperType),
        const DeepCollectionEquality().hash(collectionType),
        const DeepCollectionEquality().hash(artistId),
        const DeepCollectionEquality().hash(collectionId),
        const DeepCollectionEquality().hash(amgArtistId),
        const DeepCollectionEquality().hash(artistName),
        const DeepCollectionEquality().hash(collectionName),
        const DeepCollectionEquality().hash(collectionCensoredName),
        const DeepCollectionEquality().hash(artistViewUrl),
        const DeepCollectionEquality().hash(collectionViewUrl),
        const DeepCollectionEquality().hash(artworkUrl60),
        const DeepCollectionEquality().hash(artworkUrl100),
        const DeepCollectionEquality().hash(collectionPrice),
        const DeepCollectionEquality().hash(collectionExplicitness),
        const DeepCollectionEquality().hash(trackCount),
        const DeepCollectionEquality().hash(copyright),
        const DeepCollectionEquality().hash(country),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(releaseDate),
        const DeepCollectionEquality().hash(primaryGenreName),
        const DeepCollectionEquality().hash(contentAdvisoryRating)
      ]);

  @JsonKey(ignore: true)
  @override
  _$ItunesAlbumCopyWith<_ItunesAlbum> get copyWith =>
      __$ItunesAlbumCopyWithImpl<_ItunesAlbum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItunesAlbumToJson(this);
  }
}

abstract class _ItunesAlbum implements ItunesAlbum {
  const factory _ItunesAlbum(
      {required String wrapperType,
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
      String? contentAdvisoryRating}) = _$_ItunesAlbum;

  factory _ItunesAlbum.fromJson(Map<String, dynamic> json) =
      _$_ItunesAlbum.fromJson;

  @override
  String get wrapperType;
  @override
  String? get collectionType;
  @override
  int? get artistId;
  @override
  int? get collectionId;
  @override
  int? get amgArtistId;
  @override
  String get artistName;
  @override
  String get collectionName;
  @override
  String? get collectionCensoredName;
  @override
  String? get artistViewUrl;
  @override
  String? get collectionViewUrl;
  @override
  String? get artworkUrl60;
  @override
  String? get artworkUrl100;
  @override
  double? get collectionPrice;
  @override
  String get collectionExplicitness;
  @override
  int? get trackCount;
  @override
  String? get copyright;
  @override
  String get country;
  @override
  String? get currency;
  @override
  String? get releaseDate;
  @override
  String? get primaryGenreName;
  @override
  String? get contentAdvisoryRating;
  @override
  @JsonKey(ignore: true)
  _$ItunesAlbumCopyWith<_ItunesAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}
