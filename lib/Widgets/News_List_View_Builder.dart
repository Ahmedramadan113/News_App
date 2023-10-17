import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

import 'package:news_app/Services/News_Service.dart';
import 'package:news_app/Widgets/News_Listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });

  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = News_Service(Dio()).getTopHeadline(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article_Model>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return News_listview(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Error_Massege(),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}

class Error_Massege extends StatelessWidget {
  const Error_Massege({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('oops there was an errer , try later');
  }
}
