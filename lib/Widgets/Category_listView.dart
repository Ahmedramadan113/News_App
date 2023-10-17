import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_Models.dart';
import 'package:news_app/Widgets/category_card.dart';

class Category_ListView extends StatelessWidget {
  const Category_ListView({
    super.key,
  });

  final List<Category_Models> Category = const [
    Category_Models(image: 'assets/Business.jpeg', Category_Name: 'Business'),
    Category_Models(
        image: 'assets/entertaiment.avif', Category_Name: 'Entertainment'),
    Category_Models(image: 'assets/health.avif', Category_Name: 'health'),
    Category_Models(image: 'assets/science.avif', Category_Name: 'Science'),
    Category_Models(image: 'assets/Sport.jpeg', Category_Name: 'Sports'),
    Category_Models(
        image: 'assets/technology.jpeg', Category_Name: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Category.length,
        itemBuilder: (context, index) {
          return Category_Card(
            category: Category[index],
          );
        },
      ),
    );
  }
}
