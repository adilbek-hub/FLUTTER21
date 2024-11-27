import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sabak_16_weather_app_1/server.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String weatherInfo = "Маалымат жүктөлүүдө...";
  String sityNAme = "";

  void weatherFun() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=osh,&appid=41aa18abb8974c0ea27098038f6feb1b');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);
      final name = data["name"];
      final temp = data["main"]["temp"];
      final withKelvin = temp - 273.15;
      setState(() {
        weatherInfo = withKelvin.toStringAsFixed(0);
        sityNAme = name;
      });
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    weatherFun();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Weather'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "$sityNAme шаарында абанын температурасы: $weatherInfo gradus"),
          ],
        ),
      ),
    );
  }
}
