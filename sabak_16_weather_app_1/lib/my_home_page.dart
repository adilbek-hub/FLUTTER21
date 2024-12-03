import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sabak_16_weather_app_1/contants.dart/app_text_styles.dart';
import 'package:sabak_16_weather_app_1/server.dart';
import 'package:http/http.dart' as http;
import 'package:sabak_16_weather_app_1/widgets/weather_view_banner.dart';

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
        backgroundColor: Color(
          0xff66d8f1,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xff66d8f1),
                Color(
                  0xff97eafc,
                ),
              ],
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 31.5, vertical: 20.7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/icons/search.png'),
                    Image.asset('assets/icons/menu.png'),
                  ],
                ),
                Text(
                  'Bishkek,\nKyrgyzstan',
                  style: AppTextStyles.lacotionStyle,
                ),
                Text(
                  'Tue, Jun 30',
                  style: AppTextStyles.dataStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/cludy.png',
                      width: 250.16,
                      height: 250.98,
                      fit: BoxFit.fill,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              weatherInfo,
                              style: AppTextStyles.tempStyle,
                            ),
                            Text(
                              '\u2103',
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Text(
                          'Rainy',
                          style: AppTextStyles.tempNameStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                const WeatherViewBanner(
                  image: 'assets/images/umbrella.png',
                  text: 'RainFall',
                  text2: '3cm',
                ),
                const WeatherViewBanner(
                  image: 'assets/images/Vector.png',
                  text: 'Wind',
                  text2: '19km/h',
                ),
                const WeatherViewBanner(
                  image: 'assets/images/Rectangle.png',
                  text: 'Humidity',
                  text2: '64%',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
