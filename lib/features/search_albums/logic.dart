import 'package:get/get.dart';

import '../../repositories/itunes_repository/itunes_repository.dart';
import 'state.dart';

class SearchAlbumsLogic extends GetxController {
  final SearchAlbumsState state = SearchAlbumsState();
  final ItunesRepository itunesRepository;

  SearchAlbumsLogic({
    required this.itunesRepository,
  });

  @override
  Future<void> onInit() async {
    super.onInit();
    var data = await itunesRepository.getAlbums(term: "term", entity: "album");
    print(data);
  }
}
