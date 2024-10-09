import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_article.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NewsApiService {
  static final _apiKey = dotenv.env['NEWS_API_KEY'];
  static const _baseUrl = 'https://newsapi.org/v2/top-headlines';

  Future<List<NewsArticle>> fetchTopHeadlines(String country) async {
    final response =
        await http.get(Uri.parse('$_baseUrl?country=$country&apiKey=$_apiKey'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List articles = data['articles'];
      return articles.map((e) => NewsArticle.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
