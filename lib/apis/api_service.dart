import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:news_app/apis/models/article_modling/article_responce.dart';
import 'package:news_app/apis/models/source_modling/source_responce.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/feats/models/category_model.dart';

class ApiService {
  static const String baseUrl = 'newsapi.org';
  static const apiKey = '7e22460b59d7467fbaf0f739fda68291';
  static const sourcesEndPoint = '/v2/top-headlines/sources';
  static const articlesEndPoint = '/v2/top-headlines';

  static Future<SourceResponce> getSources(CategoryModel category) async {
    Uri url = Uri.https(baseUrl, sourcesEndPoint, {
      "apiKey": apiKey,
      "category": category.id,
    });
    http.Response serverResponce = await http.get(url);
    var json = jsonDecode(serverResponce.body);
    return SourceResponce.fromJson(json);
  }

  static Future<ArticleResponce> getarticles(CategoryModel category) async {
    Uri url = Uri.https(baseUrl, articlesEndPoint, {
      "apiKey": apiKey,
      "category": category.id,
    });
    http.Response serverResponce = await http.get(url);
    var json = jsonDecode(serverResponce.body);
    return ArticleResponce.fromJson(json);
  }
}
