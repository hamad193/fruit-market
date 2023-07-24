import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/4_number_entering.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(17, 110, 17, 110),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  child: Image.asset('assets/loginScreenImage.png'),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text('Fruit Market',
                      style: TextStyle(
                        color: Color(0xFF69A03A),
                        fontWeight: FontWeight.w900,
                        fontSize: 48,
                      )),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EnterNumberScreen()));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                height: 52,
                width: MediaQuery.of(context).size.width,
                child: Text('Enter Your Mobile Number'),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xFF707070),
                  ),
                ),
              ),
            ),
            Center(child: Text('OR')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                    alignment: Alignment.center,
                    height: 52,
                    width: MediaQuery.of(context).size.width / 2 - 25,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/google-logo.png'),
                        SizedBox(width: 12),
                        Text('Log in with'),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFF707070),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                    alignment: Alignment.center,
                    height: 52,
                    width: MediaQuery.of(context).size.width / 2 - 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/facebook-logo.png'),
                        SizedBox(width: 12),
                        Text('Log in with'),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFF707070),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
