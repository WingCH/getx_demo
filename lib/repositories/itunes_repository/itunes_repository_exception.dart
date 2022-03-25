import 'package:dio/dio.dart';

class ItunesRepositoryException implements Exception {

}

class ItunesRepositoryNotFoundException implements ItunesRepositoryException {
  @override
  String toString() {
    return 'Not found any albums';
  }
}

class ItunesRepositoryNetworkException implements ItunesRepositoryException {
  final DioError dioError;

  ItunesRepositoryNetworkException({required this.dioError});

  @override
  String toString() {
    return dioError.message;
  }
}

class ItunesRepositoryUnknownException implements ItunesRepositoryException {
  final Object catchObject;

  ItunesRepositoryUnknownException({required this.catchObject});

  @override
  String toString() {
    return catchObject.toString();
  }
}
