import 'package:flutter/material.dart';

import 'package:news_app/Views/Home_view.dart';

void main() {
  runApp(News_App());
}

class News_App extends StatelessWidget {
  const News_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_view(),
    );
  }
}
