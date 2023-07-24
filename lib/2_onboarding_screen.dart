import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/3_login_screen.dart';
import 'package:fruit_market/text_styles.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageDecoration introPageTextDecoration = PageDecoration(
    titleTextStyle: introText1Style,
    bodyTextStyle: introText2Style,
    imageFlex: 2,
  );

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      onDone: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LogInScreen()));
      },
      showDoneButton: true,
      done: Container(
        //width: 90,
        width: MediaQuery.of(context).size.width / 4 - 10,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: greenColor,
        ),
        child: Center(
          child: Text(
            'Get Started',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
      showNextButton: true,
      next: Container(
        //width: 90,
        width: MediaQuery.of(context).size.width / 4 - 10,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: greenColor,
        ),
        child: Center(
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
      showSkipButton: true,
      skip: Container(
        //width: 90,
        width: MediaQuery.of(context).size.width / 4 - 10,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: greenColor,
        ),
        child: Center(
          child: Text(
            'Skip',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
      skipFlex: 0,
      nextFlex: 0,
      dotsFlex: 2,
      dotsDecorator: DotsDecorator(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(color: greenColor),
        ),
        color: Colors.white,
        activeColor: greenColor,
        size: Size.square(10),
        activeSize: Size.square(10),
      ),
      pages: [
        PageViewModel(
          title: 'E Shopping',
          image: Container(
            width: MediaQuery.of(context).size.width - 70,
            child: Image.asset('assets/intro1.png'),
          ),
          body: 'Explore  top organic fruits & grab them',
          decoration: introPageTextDecoration,
        ),
        PageViewModel(
          title: "Delivery on the way",
          image: Container(
            width: MediaQuery.of(context).size.width - 70,
            child: Image.asset('assets/intro2.png'),
          ),
          body: 'Get your order by speed delivery',
          decoration: introPageTextDecoration,
        ),
        PageViewModel(
          title: "Delivery Arrived",
          image: Container(
            width: MediaQuery.of(context).size.width - 70,
            child: Image.asset('assets/intro3.png'),
          ),
          body: 'Order is arrived at your Place',
          decoration: introPageTextDecoration,
        ),
      ],
    );
  }
}
