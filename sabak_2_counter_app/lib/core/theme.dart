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
    ),
  );

  ///MARK: Body bgc
  ThemeData myBodyBgcColor = ThemeData(
    scaffoldBackgroundColor: Colors.grey,
  );
  /// Mark: AppBAr bgc 
  
}