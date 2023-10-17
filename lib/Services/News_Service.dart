import 'package:dio/dio.dart';
// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

class News_Service {
  final Dio dio;

  News_Service(this.dio);

  Future<List<Article_Model>> getTopHeadline({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=88823d9dad4b49459afffabf2bf4bbbc&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<Article_Model> articleList = [];

      for (var article in articles) {
        Article_Model articleModel = Article_Model(
            image: article['urlToImage'],
            subTitle: article['description'],
            title: article['title']);
        articleList.add(articleModel);
      }

      return articleList;
    } catch (e) {
      return [];
    }
  }
}
