import 'package:flutter/material.dart';

class MyThemeData {
  static Color ligthModeColor = Color(0xFFB7935F);
  static Color hedlineLightColor = Color(0xFF242424);
  static final ThemeData lightMode = ThemeData(
      primaryColor: ligthModeColor,
      backgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0,iconTheme: IconThemeData(
        color: hedlineLightColor
      )),
      textTheme: TextTheme(
          headline1: TextStyle(
              color: hedlineLightColor,
              fontSize: 30,
              fontWeight: FontWeight.w700),
          subtitle1: TextStyle(
              color: hedlineLightColor,
              fontSize: 25,
              fontWeight: FontWeight.w400)
      )
  );
  static Color darkModeColor = Color(0xFF141A2E);
  static Color hedlinedarkColor = Color(0xFFF8F8F8);
  static final ThemeData darkMode = ThemeData(
      primaryColor: darkModeColor,
      backgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),
      textTheme: TextTheme(
          headline1: TextStyle(
              color: hedlinedarkColor,
              fontSize: 30,
              fontWeight: FontWeight.w700)));
}
