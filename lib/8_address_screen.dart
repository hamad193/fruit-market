import 'package:flutter/material.dart';
import 'package:fruit_market/text_styles.dart';

class AddressInputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('  Enter Your Name', style: text2),
              SizedBox(height: 10),
              Container(
                height: 52,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFF707070)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    //hintText: '0123456789',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text('  Add Address', style: text2),
              SizedBox(height: 10),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFF707070)),
                ),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    //hintText: '0123456789',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15),
                  ),
                ),
              ),
              SizedBox(height: 60),
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
        ),
      ),
    );
  }
}
