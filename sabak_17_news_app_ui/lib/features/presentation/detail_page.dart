import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak_17_news_app_ui/constants/text_styles/texts_styles.dart';
import 'package:sabak_17_news_app_ui/features/model/news_model.dart';
import 'package:sabak_17_news_app_ui/widgets/cached_image.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.news});
  final Articles? news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomCachedImage(
            imageUrl: news?.urlToImage ?? "",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  "Correspondent: ${news?.author ?? "No author"}",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  news?.title ?? "No title",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  news?.description ?? "No description",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      news?.publishedAt != null
                          ? DateFormat.MMMEd()
                              .add_jm()
                              .format(DateTime.parse(news!.publishedAt!))
                          : 'Unknown Date',
                      style: newsTextStyle.apply(
                        decoration: TextDecoration.underline,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
