import 'package:dio/dio.dart';

class ItunesRepositoryException implements Exception {}

class ItunesRepositoryNetworkException implements ItunesRepositoryException {
  final DioError dioError;

  ItunesRepositoryNetworkException({required this.dioError});
}

class ItunesRepositoryUnknownException implements ItunesRepositoryException {
  final Object catchObject;

  ItunesRepositoryUnknownException({required this.catchObject});
}
