import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/features/model/news_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsURLPage extends StatelessWidget {
  final Articles? news;

  const NewsURLPage({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String? url = news?.url;

    if (url == null || url.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text('Invalid URL')),
        body: Center(child: Text('No URL available to display')),
      );
    }

    final WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Optionally handle progress updates.
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (String url) {
            print('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            print('Failed to load resource: ${error.description}');
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(url));

    return Scaffold(
      appBar: AppBar(title: Text(news?.title ?? 'News Details')),
      body: WebViewWidget(controller: controller),
    );
  }
}
