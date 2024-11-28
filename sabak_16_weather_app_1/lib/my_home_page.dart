import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sabak_16_weather_app_1/contants.dart/app_text_styles.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff66d8f1),
        appBar: AppBar(
          backgroundColor: Color(0xff66d8f1),
          title: Icon(Icons.search),
          actions: [
            Icon(Icons.menu),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bishkek\nKyrgyzstan',
                style: AppTextStyles.lacotionStyle,
              ),
              Text(
                'Tue, Jun 30',
                style: AppTextStyles.dataStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/3222808.png', width: 150),
                  Column(
                    children: [
                      Text(
                        '$weatherInfo°',
                        style: AppTextStyles.tempStyle,
                      ),
                      Text(
                        'Rainy',
                        style: AppTextStyles.tempNameStyle,
                      ),
                    ],
                  ),
                ],
              ),
              WeatherViewBanner(),
              WeatherViewBanner(),
              WeatherViewBanner(),
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherViewBanner extends StatelessWidget {
  const WeatherViewBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.31),
      child: Container(
        width: double.infinity,
        height: 65.54,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(
            17.25,
          ),
        ),
      ),
    );
  }
}
