import 'package:flutter/material.dart';
import 'package:fruit_market/text_styles.dart';

class DetailsScreen extends StatelessWidget {

  final String dName;
  final double dPrice;
  final String dImage;

  DetailsScreen({
    required this.dName,
    required this.dPrice,
    required this.dImage
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'DETAILS',
          style: TextStyle(fontSize: 14),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 176,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(dImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(dName, style: text6),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(
                     dName + ' will provide natural nutrients. The  Chemical '
                        'in organic grapes which can be healthier hair and'
                        'skin. It can be improve Your heart health. Protect your'
                        'body from Cancer.',
                    style: text5,
                  ),
                ),
              ],
            ),
            Text('Nutrition', style: text6),
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [Icon(Icons.circle, size: 10), SizedBox(width: 10), Text('Fat', style: text5)]),
                  Row(children: [Icon(Icons.circle, size: 10), SizedBox(width: 10), Text('Potassium', style: text5)]),
                  Row(children: [Icon(Icons.circle, size: 10), SizedBox(width: 10), Text('Selenium', style: text5)]),
                  Row(children: [Icon(Icons.circle, size: 10), SizedBox(width: 10), Text('Vitamin B9', style: text5)]),
                  Row(children: [Icon(Icons.circle, size: 10), SizedBox(width: 10), Text('Vitamin A', style: text5)]),
                  Row(children: [Icon(Icons.circle, size: 10), SizedBox(width: 10), Text('Vitamin K', style: text5)]),
                  Row(children: [Icon(Icons.circle, size: 10), SizedBox(width: 10), Text('Zinc', style: text5)]),
                  Row(children: [Icon(Icons.circle, size: 10), SizedBox(width: 10), Text('Phosphorus', style: text5)]),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('₹ ' + dPrice.round().toString() + ' per/kg', style: text2),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 148,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: greenColor,
                    ),
                    child: Center(child: Text('Buy Now', style: text7)),
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
