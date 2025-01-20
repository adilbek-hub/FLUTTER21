import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_19_news_app_with_bloc/bloc/news_bloc.dart';
import 'package:sabak_19_news_app_with_bloc/my_home_page.dart';
import 'package:sabak_19_news_app_with_bloc/service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<NewsBloc>(
        create: (context) =>
            NewsBloc(serviceData: ServiceData())..add(FetchNews()),
        child: const MyHomePage(),
      ),
    );
  }
}
