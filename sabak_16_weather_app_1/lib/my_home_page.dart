import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sabak_16_weather_app_1/contants.dart/app_text_styles.dart';
import 'package:sabak_16_weather_app_1/contants.dart/liner_gradient.dart';
import 'package:sabak_16_weather_app_1/server.dart';
import 'package:http/http.dart' as http;
import 'package:sabak_16_weather_app_1/widgets/slider_view.dart';
import 'package:sabak_16_weather_app_1/widgets/weather_days_card.dart';
import 'package:sabak_16_weather_app_1/widgets/weather_view_banner.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String weatherInfo = "Маалымат жүктөлүүдө...";
  String sityNAme = "";
  String countryN = "";
  String weatherIcon = "";
  String mainWeather = "";
  double windWether = 0;

  void weatherFun() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=oymyakon,&appid=41aa18abb8974c0ea27098038f6feb1b');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);

      final name = data["name"] ?? "Белгисиз шаар";
      final temp = data["main"]["temp"] ?? 0.0;
      final countryName = data["sys"]["country"] ?? "Белгисиз өлкө";
      final icon = data["weather"][0]["icon"] ?? "";
      final main = data["weather"][0]["main"] ?? "Белгисиз аба-ырайы";
      final wind = (data["wind"]["speed"] ?? 0.0).toDouble();
      final withKelvin = temp - 273.15;
      setState(() {
        weatherInfo = withKelvin.toStringAsFixed(0);
        sityNAme = name;
        countryN = countryName;
        weatherIcon = icon;
        mainWeather = main;
        windWether = wind;
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
    //SafeArea бул экрандын үстүн карартып береп
    return SafeArea(
      // child бул SafeArea баласы
      // Scaffold бул экрандын актай барагы
      child: Scaffold(
        backgroundColor: Color(
          0xff66d8f1,
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinerGradientColor.liner,
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
                    '$sityNAme,\n$countryN',
                    style: AppTextStyles.lacotionStyle,
                  ),
                  Text(
                    'Tue, Jun 30',
                    style: AppTextStyles.dataStyle,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Image.network(
                          weatherIcon.isNotEmpty
                              ? 'https://openweathermap.org/img/wn/$weatherIcon@4x.png'
                              : 'assets/images/cludy.png',
                          width: 250.16,
                          height: 250.98,
                        ),
                      ),
                      Expanded(
                        child: Column(
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
                              "",
                              style: AppTextStyles.tempNameStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const WeatherViewBanner(
                    image: 'assets/images/umbrella.png',
                    text: 'RainFall',
                    text2: '3cm',
                  ),
                  WeatherViewBanner(
                    image: 'assets/images/Vector.png',
                    text: 'Wind',
                    text2: "${windWether.toString()} k/h",
                  ),
                  const WeatherViewBanner(
                    image: 'assets/images/Rectangle.png',
                    text: 'Humidity',
                    text2: '64%',
                  ),
                  const SliderView(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            gradient: LinerGradientColor.liner,
          ),
          child: SizedBox(
            height: 98.99,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return WeatherDaysCard(
                  text1: 'now',
                  image: 'assets/images/icon (3).png',
                  text2: '19 °',
                );
              },
              itemCount: 10,
            ),
          ),
        ),
      ),
    );
  }
}
