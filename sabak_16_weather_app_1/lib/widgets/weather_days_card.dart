import 'package:flutter/material.dart';

class WeatherDaysCard extends StatelessWidget {
  const WeatherDaysCard({
    super.key,
    required this.text1,
    required this.text2,
    required this.image,
  });
  final String text1, text2, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 17.25, vertical: 3),
      width: 55.19,
      height: 98.99,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(34.5),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: TextStyle(
                fontSize: 12.07,
                fontWeight: FontWeight.w400,
              ),
            ),
            Image.asset(image),
            Text(
              text2,
              style: TextStyle(
                fontSize: 12.07,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
