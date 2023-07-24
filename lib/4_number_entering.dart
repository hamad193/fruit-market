import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/text_styles.dart';

import '5_6_verification.dart';

class EnterNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 52,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFF707070)),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF707070)),
                      ),
                      child: Center(child: Text('+91')),
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '0123456789',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => VerificationScreen()));
                },
                child: Container(
                  height: 52,
                  width: MediaQuery.of(context).size.width,
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
        ),
      ),
    );
  }
}
