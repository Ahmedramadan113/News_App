import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

// cached network image
class News_Tile extends StatelessWidget {
  const News_Tile({
    super.key,
    required this.article_model,
  });

  final Article_Model article_model;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              article_model.image ?? 'try later',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          article_model.title,
          maxLines: 9,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          article_model.subTitle ?? "No_Sub_Title",
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
