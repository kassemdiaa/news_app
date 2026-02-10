import 'package:flutter/material.dart';
import 'package:news_app/apis/api_service.dart';
import 'package:news_app/apis/models/article_modling/article.dart';
import 'package:news_app/apis/models/source_modling/source.dart';

class ArticlesProvider extends ChangeNotifier {
  List<Articles> _articles = [];
  bool _isLoading = false;
  String? _error;

  List<Articles> get articles => _articles;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchArticles(Source source) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await ApiService.getarticles(source);
      _articles = response.articles ?? [];
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
