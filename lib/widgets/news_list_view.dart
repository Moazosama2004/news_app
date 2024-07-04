import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({Key? key}) : super(key: key);

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];

  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articles = await NewsService(Dio()).getGeneralNews();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length ,(context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: NewsTile(article: articles[index]),
      );
    }));
  }
}
