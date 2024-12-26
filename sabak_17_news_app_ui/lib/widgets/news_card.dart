import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak_17_news_app_ui/constants/text_styles/texts_styles.dart';
import 'package:sabak_17_news_app_ui/features/model/news_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.index,
    required this.data,
  });
  final int index;
  final List<Articles>? data;
  // void openURL(String url) async {
  //   Uri uri = Uri.parse(url);
  //   if (await canLaunchUrl(uri)) {
  //     await launchUrl(uri);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final news = data?[index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
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
                child: CachedNetworkImage(
                  imageUrl: news?.urlToImage ?? "assets/no_mage.png",
                  placeholder: (context, url) =>
                      CircularProgressIndicator.adaptive(),
                  errorWidget: (context, url, error) =>
                      Image.asset('assets/no_mage.png'),
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
                        onPressed: () => {},
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
    );
  }
}
