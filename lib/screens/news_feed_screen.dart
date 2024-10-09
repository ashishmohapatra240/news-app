import 'package:flutter/material.dart';
import 'package:news_app/services/remote_config_service.dart';
import 'package:provider/provider.dart';
import '../providers/news_provider.dart';

class NewsFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final newsProvider = Provider.of<NewsProvider>(context);
    final remoteConfigService = RemoteConfigService();

    if (!newsProvider.isLoading && newsProvider.articles.isEmpty) {
      newsProvider.fetchTopHeadlines(remoteConfigService.countryCode);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Headlines'),
      ),
      body: newsProvider.isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: newsProvider.articles.length,
              itemBuilder: (context, index) {
                final article = newsProvider.articles[index];
                return ListTile(
                  leading: article.urlToImage != ''
                      ? Image.network(
                          article.urlToImage,
                          width: 100,
                          fit: BoxFit.cover,
                        )
                      : null,
                  title: Text(article.title),
                  subtitle: Text(article.description),
                  onTap: () {
                    // Handle article tap, possibly navigate to detail screen
                  },
                );
              },
            ),
    );
  }
}
