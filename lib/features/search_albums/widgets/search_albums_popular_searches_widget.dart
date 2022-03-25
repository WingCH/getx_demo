import 'package:flutter/material.dart';

class SearchAlbumsPopularSearchesWidget extends StatelessWidget {
  SearchAlbumsPopularSearchesWidget({
    Key? key,
    required this.onSearch,
  }) : super(key: key);

  final Function(String) onSearch;

  final List<String> popularKeys = [
    'jack johnson',
    '一表人才',
    'ddu du',
    'collar',
    'pretty savage',
    'arashi',
    'don\'t touch me',
    'saxophone songs academy',
    'love all serve all',
    'avid',
    'little miss janice'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '熱門搜尋',
              style: Theme.of(context).textTheme.headline5,
            ),
            ...popularKeys.map((popularKey) {
              return TextButton(
                  onPressed: () {
                    onSearch(popularKey);
                  },
                  child: Text(popularKey));
            }).toList()
          ],
        ),
      ),
    );
  }
}