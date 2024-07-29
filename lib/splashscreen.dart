import 'package:flutter/material.dart';
import 'package:ibrahim_the_story/home.dart';
import 'dart:async';
import 'package:ibrahim_the_story/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigate to the next screen after 3 seconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      orientation == Orientation.portrait
                          ? 'assets/splash_portrait.png'
                          : 'assets/splash_landscape.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'images/logo_color.png',
                  height: 120, // Adjust the height as needed
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
