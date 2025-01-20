import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sabak_19_news_app_with_bloc/model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.news,
  });

  final Articles? news;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(news?.urlToImage ?? ''),
          Text(
            news?.author ?? "",
            style: TextStyle(fontSize: 10),
          ),
          Text(
            news?.title ?? "",
            style: TextStyle(fontSize: 13),
          ),
          Text(
            news?.description ?? "",
            style: TextStyle(fontSize: 18),
          ),
          Text(
            news?.publishedAt ?? "",
            style: TextStyle(fontSize: 22),
          ),
        ],
      ),
    );
  }
}
