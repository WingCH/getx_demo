import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_demo/repositories/bookmark_repository/bookmark_repository.dart';
import 'package:getx_demo/repositories/bookmark_repository/local_bookmark_repository.dart';

import 'app/app.dart';
import 'repositories/itunes_repository/itunes_repository.dart';
import 'repositories/itunes_repository/real_itunes_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // -- dependency --

  // ItunesRepository
  Dio itunesDio = createDio(baseUrl: 'https://itunes.apple.com');
  ItunesRepository itunesRepository = RealItunesRepository(dio: itunesDio);
  Get.put<ItunesRepository>(itunesRepository, permanent: true);

  // BookmarkRepository
  await GetStorage.init(LocalBookmarkRepository.boxKey);
  BookmarkRepository bookmarkRepository =
      LocalBookmarkRepository(box: GetStorage(LocalBookmarkRepository.boxKey));
  Get.put<BookmarkRepository>(bookmarkRepository, permanent: true);

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
