import 'dart:convert';

import 'package:http/http.dart';
import 'package:news_app/Model/ArticleModel.dart';

class ApiService {
  final baseUrl = "";
  Future<List<Article>?> getArticle(String category) async {
    String categoryz = category;
    String endpointUrl =
        "https://newsapi.org/v2/top-headlines?country=us&category=$categoryz&apiKey=ae803744a76646c38f5755aa7e399a0c";
    if (category == "in") {
       endpointUrl = "https://newsapi.org/v2/top-headlines?country=in&apiKey=ae803744a76646c38f5755aa7e399a0c";
    }
    Response res = await get(Uri.parse(endpointUrl));
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body) as Map<String, dynamic>;
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the article!");
    }
  }
}
