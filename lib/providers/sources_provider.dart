import 'package:flutter/material.dart';
import 'package:news_app/apis/api_service.dart';
import 'package:news_app/apis/models/source_modling/source.dart';
import 'package:news_app/feats/models/category_model.dart';

class SourcesProvider extends ChangeNotifier {
  List<Source> _sources = [];
  bool _isLoading = false;
  String? _error;

  List<Source> get sources => _sources;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchSources(CategoryModel category) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await ApiService.getSources(category);
      _sources = response.sources ?? [];
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
