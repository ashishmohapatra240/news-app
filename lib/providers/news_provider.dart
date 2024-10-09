import 'package:flutter/material.dart';
import '../services/news_api_service.dart';
import '../models/news_article.dart';

class NewsProvider with ChangeNotifier {
  final NewsApiService _newsApiService = NewsApiService();
  List<NewsArticle> _articles = [];
  bool _isLoading = false;

  List<NewsArticle> get articles => _articles;
  bool get isLoading => _isLoading;

  Future<void> fetchTopHeadlines(String country) async {
    _isLoading = true;
    notifyListeners();
    try {
      _articles = await _newsApiService.fetchTopHeadlines(country);
    } catch (e) {
      // Handle errors
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
