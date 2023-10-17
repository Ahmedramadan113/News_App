// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/Models/article_model.dart';
// import 'package:news_app/Services/News_Service.dart';

// import 'package:news_app/Widgets/News_Tile.dart';

// class News_Listview extends StatefulWidget {
//   const News_Listview({
//     super.key,
//   });

//   @override
//   State<News_Listview> createState() => _News_ListviewState();
// }

// class _News_ListviewState extends State<News_Listview> {
//   List<Article_Model> articles = [];

//   bool isloading = true;
//   @override
//   void initState() {
//     super.initState();

//     GetGeneralNews();
//   }

//   Future<void> GetGeneralNews() async {
//     articles = await News_Service(Dio()).get_News();
//     isloading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isloading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()),
//           )
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 22),
//                   child: News_Tile(
//                     article_model: articles[index],
//                   ),
//                 );
//               },
//             ),
//           );
//   }
// }
