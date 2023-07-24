import 'package:flutter/material.dart';
import 'package:fruit_market/10_details_screen.dart';
import 'package:fruit_market/3_login_screen.dart';
import 'package:fruit_market/2_onboarding_screen.dart';
import 'package:fruit_market/1_splashScreen.dart';
import 'package:fruit_market/4_number_entering.dart';
import 'package:fruit_market/5_6_verification.dart';
import 'package:fruit_market/7_OTP_screen.dart';
import 'package:fruit_market/8_address_screen.dart';
import 'package:fruit_market/9_home_screen.dart';
import 'package:fruit_market/bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF69A03A))),
      home: BottomNavigationBarScreen(),
    );
  }
}
