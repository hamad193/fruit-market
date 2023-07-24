import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/my_card.dart';
import 'package:fruit_market/text_styles.dart';

class DryFruitsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Text('Indehiscent Dry Fruits', style: text2),
                SizedBox(width: 24),
                Text('(20% off)', style: text4),
              ],
            ),
            SizedBox(height: 6),
            Text('Pick up from organic farms', style: text5),
            SizedBox(height: 10),
            Container(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(name: 'Cashewnuts', price: 190, image: 'assets/df11.png'),
                  MyCard(name: 'Walnuts', price: 80, image: 'assets/df12.png'),
                  MyCard(name: 'Hazelnuts', price: 70, image: 'assets/df13.png'),
                ],
              ),
            ),

            SizedBox(height: 30),
            Row(
              children: [
                Text('Mixed Dry Fruit Pack', style: text2),
                SizedBox(width: 24),
                Text('(10% off)', style: text4),
              ],
            ),
            SizedBox(height: 6),
            Text('Dry Fruits mixed fresh pack', style: text5),
            SizedBox(height: 10),
            Container(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(name: 'Multi Dry Fruits', price: 370, image: 'assets/df21.png'),
                  MyCard(name: 'Paper Dry Fruits', price: 270, image: 'assets/df22.png'),
                  MyCard(name: 'Tropicana', price: 180, image: 'assets/df23.png'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text('Dehiscent Dry Fruits', style: text2),
                SizedBox(width: 24),
                Text('(15% off)', style: text4),
              ],
            ),
            SizedBox(height: 6),
            Text('Fresh dehiscent vegetables', style: text5),
            SizedBox(height: 10),
            Container(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(name: 'Almond', price: 130, image: 'assets/df31.png'),
                  MyCard(name: 'Injeer', price: 110, image: 'assets/df32.png'),
                  MyCard(name: 'Am papad', price: 180, image: 'assets/df33.png'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text('Kashmiri Dry Fruits', style: text2),
                SizedBox(width: 24),
                Text('(5% off)', style: text4),
              ],
            ),
            SizedBox(height: 6),
            Text('Fresh Kashmiri Dry fruits', style: text5),
            SizedBox(height: 10),
            Container(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(name: 'Zafran', price: 70, image: 'assets/df41.png'),
                  MyCard(name: 'Santoor', price: 100, image: 'assets/df42.png'),
                  MyCard(name: 'Dates', price: 130, image: 'assets/df43.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
