import 'package:flutter/material.dart';
import 'package:fruit_market/text_styles.dart';

class ChangeAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Change Address',
          style: TextStyle(fontSize: 14),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 52,
                  width: MediaQuery.of(context).size.width - 40,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: greenColor,
                  ),
                  child: Center(
                      child: Text('CHANGE',
                          style: TextStyle(color: Colors.white))),
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
