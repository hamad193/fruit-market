import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruit_market/7_OTP_screen.dart';
import 'package:fruit_market/text_styles.dart';
import 'package:loading_indicator/loading_indicator.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  Widget _myAnimatedWidget = myLoadingIndicator;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      setState(() {
        _myAnimatedWidget = myVerifiedContainer;
        Timer(Duration(seconds: 3), () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => OTPScreen()));
        });
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 3 - 100),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 1000),
            child: _myAnimatedWidget,
          ),
        ],
      ),
    );
  }
}

Widget myLoadingIndicator = Column(
  children: [
    Center(
      child: Container(
        width: 110,
        height: 110,
        child: LoadingIndicator(
          indicatorType: Indicator.lineSpinFadeLoader,
          strokeWidth: 2,
          colors: [
            greenColor,
          ],
        ),
      ),
    ),
    SizedBox(height: 40),
    Text(
      'Verifying Your Mobile Number',
      style: text1,
    ),
  ],
);

Widget myVerifiedContainer = Column(
  children: [
    Center(
      child: Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: greenColor, width: 3),
        ),
        child: Icon(
          Icons.check,
          size: 75,
          color: greenColor,
        ),
      ),
    ),
    SizedBox(height: 40),
    Text(
      'Verification Code Send on\nyour Registered Mobile Number ',
      textAlign: TextAlign.center,
      style: text1,
    )
  ],
);
