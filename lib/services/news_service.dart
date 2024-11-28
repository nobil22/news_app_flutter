import 'package:dio/dio.dart';
import 'package:news_appp/models/article_viewmodel.dart';

class NewService {
  final Dio dio;

  NewService(this.dio);

  Future<List<ArticleModel>> getGeneralNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=c4aa7064811e40dc983cd801c35ece89&category=general',
    );
    Map<String, dynamic> jasondata = response.data;
    List<dynamic> articls = jasondata['articles'];
    List<ArticleModel> articlelist = [];

    for (var article in articls) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['content'],
      );
      articlelist.add(articleModel);
    }
    return articlelist;
  }
}
