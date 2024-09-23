import 'package:flutter/material.dart';

class MyTheme {
  ///MARK: text style
  ThemeData myLightTheme = ThemeData(
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w400,
      ),
      displayLarge: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 30,
    ),
  );

  ///MARK: Body bgc
  ThemeData myBodyBgcColor = ThemeData(
    scaffoldBackgroundColor: Colors.grey,
  );

  /// Mark: AppBAr bgc
}
