import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          const Text('Hello World'),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 158, 168, 159),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Icon(
            Icons.settings_applications,
            color: Colors.white,
            size: 50,
          ),
        ],
      ),
      bottomNavigationBar: Container(color: Colors.white, height: 50),
    );
  }
}
