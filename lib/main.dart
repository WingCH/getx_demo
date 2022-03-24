import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/app.dart';
import 'repositories/itunes_repository/itunes_repository.dart';
import 'repositories/itunes_repository/real_itunes_repository.dart';

void main() {
  // -- dependency --
  Dio itunesDio = createDio(baseUrl: 'https://itunes.apple.com');
  ItunesRepository itunesRepository = RealItunesRepository(dio: itunesDio);
  Get.put(itunesRepository, permanent: true);
  // -- dependency --

  runApp(const App());
}

Dio createDio({
  required String baseUrl,
}) {
  var options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  return Dio(options);
}
