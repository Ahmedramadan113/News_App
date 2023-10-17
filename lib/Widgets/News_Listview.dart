import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

import 'package:news_app/Widgets/News_Tile.dart';

class News_listview extends StatelessWidget {
  final List<Article_Model> articles;
  News_listview({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: News_Tile(
              article_model: articles[index],
            ),
          );
        },
      ),
    );
  }
}
