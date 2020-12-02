import 'package:flutter/material.dart';

class AppTheme {
  //
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.white,

    ),
    colorScheme: ColorScheme.light(
      surface: Color(0xffFCEF87),
      primary: Color(0xffF8E020),
      onPrimary: Colors.amber ,
      primaryVariant: Color(0xffF5D848),
      secondary: Color(0xff5F787E),
      onSecondary: Color(0xff4B5F63),
      secondaryVariant: Color(0xffFCEF87),
      onSurface: Color(0xffF5D848) ,
      brightness: Brightness.light,
    ),

    iconTheme: IconThemeData(
      color: Colors.amberAccent,
    ),
    textTheme: TextTheme(
      // ignore: deprecated_member_use
      title: TextStyle(
        color: Color(0xff333333),
        fontSize: 20.0,
      ),
      // ignore: deprecated_member_use
      subtitle: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
    ),


  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black87,
    backgroundColor: Color(0xff222222),
    appBarTheme: AppBarTheme(
      color: Color(0xff333333),

    ),
    colorScheme: ColorScheme.light(
      surface: Color(0xff5C1CA4),
      primary: Color(0xff5F11B7),
      onPrimary: Color(0xff3C2952),
      primaryVariant: Color(0xff5E11B5),
      secondary: Color(0xffBDBDBD),
      onSecondary: Color(0xff5F5F5F),
      secondaryVariant: Color(0xff6617BF),
      onSurface: Color(0xff6617BF),
      brightness: Brightness.dark,
    ),

    iconTheme: IconThemeData(
      color: Colors.blueAccent,
    ),
    textTheme: TextTheme(
      // ignore: deprecated_member_use
      title: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      // ignore: deprecated_member_use
      subtitle: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),

  );
}