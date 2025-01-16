import 'package:flutter/material.dart';
import 'package:sabak_19_news_app_with_bloc/model.dart';
import 'package:sabak_19_news_app_with_bloc/service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    ServiceData().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('News App'),
        ),
      ),
      body: FutureBuilder<News?>(
        future: ServiceData().fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator.adaptive());
          } else if (snapshot.connectionState == ConnectionState.none) {
            return Center(child: Text('ERROR'));
          } else if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: snapshot.data?.articles?.length,
                itemBuilder: (context, index) {
                  final news = snapshot.data?.articles?[index];
                  return Card(
                    child: Column(
                      children: [
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
                });
          } else {
            return Text('NULL');
          }
        },
      ),
    );
  }
}
