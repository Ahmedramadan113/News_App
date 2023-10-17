import 'package:flutter/material.dart';

import 'package:news_app/Widgets/News_List_View_Builder.dart';

class Category_View extends StatelessWidget {
  const Category_View({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
