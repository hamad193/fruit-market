import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruit_market/3_login_screen.dart';
import 'package:fruit_market/2_onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF69A03A),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                child: Image.asset('assets/splashImg.png', fit: BoxFit.fill),
              ),
            ],
          ),
          Center(
            child: Text(
              'Fruit Market',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 48,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
