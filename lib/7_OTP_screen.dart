import 'package:flutter/material.dart';
import 'package:fruit_market/8_address_screen.dart';
import 'package:fruit_market/text_styles.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 3 - 100),
          Text(
            'Enter The 4 digit code that was\nsend to your Mobile Number',
            textAlign: TextAlign.center,
            style: text1,
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              child: OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width - 100,
                fieldStyle: FieldStyle.box,
                fieldWidth: 50,
                otpFieldStyle: OtpFieldStyle(
                  backgroundColor: greyColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => AddressInputScreen()));
            },
            child: Container(
              height: 52,
              width: MediaQuery.of(context).size.width - 40,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: greenColor,
              ),
              child: Center(
                  child: Text('VERIFY',
                      style: TextStyle(color: Colors.white))),
            ),
          ),
        ],
      ),
    );
  }
}
