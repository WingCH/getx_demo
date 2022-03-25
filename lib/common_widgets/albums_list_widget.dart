import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../repositories/itunes_repository/models/itunes_search_response.dart';

class AlbumsListWidget extends StatelessWidget {
  const AlbumsListWidget({
    Key? key,
    required this.albums,
    required this.bookmarkedAlbums,
    required this.onBookmark,
  }) : super(key: key);

  final List<ItunesAlbum> albums;
  final List<ItunesAlbum> bookmarkedAlbums;
  final Function(ItunesAlbum) onBookmark;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: albums.length,
      itemBuilder: (BuildContext context, int index) {
        ItunesAlbum itunesAlbum = albums[index];
        return ListTile(
          leading: CachedNetworkImage(
            imageUrl: itunesAlbum.artworkUrl60 ?? '',
            width: 60,
            height: 60,
            placeholder: (context, url) => const CupertinoActivityIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itunesAlbum.collectionName,
                style: Theme.of(context).textTheme.subtitle1,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                itunesAlbum.artistName,
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
          trailing: IconButton(
            icon: bookmarkedAlbums.contains(itunesAlbum)
                ? const Icon(Icons.bookmark_outlined, color: Colors.deepOrange)
                : const Icon(Icons.bookmark_border_outlined),
            onPressed: () {
              onBookmark(itunesAlbum);
            },
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }
}
