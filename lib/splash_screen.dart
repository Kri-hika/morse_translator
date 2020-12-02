import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext ctx) =>
                            HomePage())),);
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: SafeArea(
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Theme.of(context).colorScheme.brightness == Brightness.light
                    ? 'assets/images/splash_screen_light.PNG'
                    : 'assets/images/splash_screen_dark.png',),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
