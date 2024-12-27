import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:sabak_17_news_app_ui/constants/text_styles/texts_styles.dart';
import 'package:sabak_17_news_app_ui/features/model/news_model.dart';
import 'package:sabak_17_news_app_ui/features/presentation/detail_page.dart';
import 'package:sabak_17_news_app_ui/features/presentation/news_url.dart';
import 'package:sabak_17_news_app_ui/widgets/cached_image.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.index,
    required this.data,
  });
  final int index;
  final List<Articles>? data;

  @override
  Widget build(BuildContext context) {
    final news = data?[index];
    // final Uri _url = Uri.parse(news?.url ?? "URL IS NOT WORKING");
    // Future<void> _launchUrl() async {
    //   if (!await launchUrl(_url)) {
    //     throw Exception('Could not launch $_url');
    //   }
    // }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage(news: news)),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 130,
                  height: 135,
                  child: CustomCachedImage(
                    imageUrl: news?.urlToImage ?? "",
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          news?.publishedAt != null
                              ? DateFormat.MMMEd()
                                  .add_jm()
                                  .format(DateTime.parse(news!.publishedAt!))
                              : 'Unknown Date',
                          style: newsTextStyle,
                        ),
                        Text(
                          news?.title ?? "Без title",
                          style: newsTextStyle,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewsURLPage(news: news),
                              ),
                            );
                          },
                          child: Text(
                            news?.url ?? "Без URL",
                            style: newsURLTextStyle,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
