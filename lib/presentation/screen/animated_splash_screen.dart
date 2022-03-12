import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:starbucks/presentation/screen/home/home_screen.dart';

class InitScreen extends StatefulWidget {
  static String routeName = '/initScreen';
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: SizedBox(
          child: Column(
            children: [
              Expanded(
                child: Image.asset('assets/logo.png',
                    width: double.infinity, height: double.infinity),
              ),
            ],
          ),
        ),
        splashIconSize: 280.0,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.white,
        duration: 2500,
        nextScreen: HomeScreen());
  }
}
