import 'package:flutter/material.dart';

class AppText {
  //Бул ВИджет кайтаруучу метод header тибиндеги текст үчүн жооптуу
  Widget header(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  //Бул ВИджет кайтаруучу  метод title тибиндеги текст үчүн жооптуу
  Widget title(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

AppText appText = AppText();
