import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/my_card.dart';
import 'package:fruit_market/text_styles.dart';

class FruitsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Text('Organic Fruits', style: text2),
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
                  MyCard(name: 'Strawberry', price: 190, image: 'assets/fruit11.png'),
                  MyCard(name: 'Grapes', price: 80, image: 'assets/fruit12.png'),
                  MyCard(name: 'Oranges', price: 70, image: 'assets/fruit13.png'),
                ],
              ),
            ),

            SizedBox(height: 30),
            Row(
              children: [
                Text('Mixed Fruit Pack', style: text2),
                SizedBox(width: 24),
                Text('(10% off)', style: text4),
              ],
            ),
            SizedBox(height: 6),
            Text('Fruits mixed fresh pack', style: text5),
            SizedBox(height: 10),
            Container(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(name: 'Multi Fruits pack', price: 370, image: 'assets/fruit21.png'),
                  MyCard(name: 'Paper Fruits pack', price: 270, image: 'assets/fruit22.png'),
                  MyCard(name: 'Tropicana', price: 180, image: 'assets/fruit23.png'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text('Stone Fruits', style: text2),
                SizedBox(width: 24),
                Text('(20% off)', style: text4),
              ],
            ),
            SizedBox(height: 6),
            Text('Fresh stone vegetables', style: text5),
            SizedBox(height: 10),
            Container(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(name: 'Nectarines', price: 130, image: 'assets/fruit31.png'),
                  MyCard(name: 'Apricots', price: 110, image: 'assets/fruit32.png'),
                  MyCard(name: 'Peaches', price: 180, image: 'assets/fruit33.png'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text('Melons', style: text2),
                SizedBox(width: 24),
                Text('(5% off)', style: text4),
              ],
            ),
            SizedBox(height: 6),
            Text('Fresh melons fruits', style: text5),
            SizedBox(height: 10),
            Container(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(name: 'Watermelon', price: 70, image: 'assets/fruit41.png'),
                  MyCard(name: 'Melon', price: 100, image: 'assets/fruit42.png'),
                  MyCard(name: 'Melon', price: 130, image: 'assets/fruit43.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
