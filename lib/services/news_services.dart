import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getGeneralNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=bitcoin&apiKey=3f98850ea92c46b1956d5f2704b53e76');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          description: article['description']);
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
