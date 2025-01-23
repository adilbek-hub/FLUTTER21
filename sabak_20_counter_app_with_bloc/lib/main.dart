import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_20_counter_app_with_bloc/bloc/counter_bloc.dart';
import 'package:sabak_20_counter_app_with_bloc/counter_app.dart';
import 'package:sabak_20_counter_app_with_bloc/counter_app_bloc.dart';

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
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: const CounterAppBloc(),
      ),
    );
  }
}
