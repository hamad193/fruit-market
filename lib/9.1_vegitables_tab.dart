import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/my_card.dart';
import 'package:fruit_market/text_styles.dart';

class VegetablesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Text('Organic Vegetables', style: text2),
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
                  MyCard(name: 'Broccoli', price: 190, image: 'assets/vege1.png'),
                  MyCard(name: 'Brinjels', price: 80, image: 'assets/vege2.png'),
                  MyCard(name: 'Corriander', price: 70, image: 'assets/vege3.png'),
                ],
              ),
            ),

            SizedBox(height: 30),
            Row(
              children: [
                Text('Mixed Vegetables Pack', style: text2),
                SizedBox(width: 24),
                Text('(10% off)', style: text4),
              ],
            ),
            SizedBox(height: 6),
            Text('Vegetables mixed fresh pack', style: text5),
            SizedBox(height: 10),
            Container(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(name: 'Multi Vegetables', price: 370, image: 'assets/veg21.png'),
                  MyCard(name: 'Paper Vegetables', price: 270, image: 'assets/veg22.png'),
                  MyCard(name: 'Tropicana', price: 180, image: 'assets/veg23.png'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text('Allium Vegetables', style: text2),
                SizedBox(width: 24),
                Text('(20% off)', style: text4),
              ],
            ),
            SizedBox(height: 6),
            Text('Fresh allium vegetables', style: text5),
            SizedBox(height: 10),
            Container(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(name: 'Onion', price: 130, image: 'assets/veg31.png'),
                  MyCard(name: 'Garlic', price: 110, image: 'assets/veg32.png'),
                  MyCard(name: 'Ginger', price: 180, image: 'assets/veg33.png'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text('Root Vegetables', style: text2),
                SizedBox(width: 24),
                Text('(5% off)', style: text4),
              ],
            ),
            SizedBox(height: 6),
            Text('Fresh root vegetables', style: text5),
            SizedBox(height: 10),
            Container(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(name: 'Carrot', price: 70, image: 'assets/veg41.png'),
                  MyCard(name: 'Reddish', price: 100, image: 'assets/veg42.png'),
                  MyCard(name: '-------', price: 130, image: 'assets/veg43.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
