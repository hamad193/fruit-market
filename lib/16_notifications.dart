import 'package:flutter/material.dart';
import 'package:fruit_market/text_styles.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Notification',
          style: TextStyle(fontSize: 14),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Today', style: text1),
          ),
          MyNotificationCard(
            image: 'assets/df32.png',
            text_1: 'Buy 1kg Get 200 Gram Free',
            text_2: 'Buy 1 Get 1 Free for small sizes\nUntil Feb 27,2021 .',
            text_3: 'Few minutes ago',
            isUnderlined: true,
          ),
          MyNotificationCard(
            image: 'assets/fruit33.png',
            text_1: 'Get 20 % Discount',
            text_2: 'Get 20% discount offer on buying\nPeaches today .',
            text_3: '30 minutes ago',
            isUnderlined: true,
          ),
          MyNotificationCard(
            image: 'assets/vege1.png',
            text_1: 'Get 20 % Extra',
            text_2: 'Get 20% discount offer on buying\nBroccoli today .',
            text_3: '1 Hour ago',
            isUnderlined: false,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Yesterday', style: text1),
          ),
          MyNotificationCard(
            image: 'assets/df31.png',
            text_1: 'Your Order booked',
            text_2: 'Rajesh will delivered your order.\nThanks for your order and stay with us.',
            text_3: '2 days ago',
            isUnderlined: true,
          ),
          MyNotificationCard(
            image: 'assets/fruit41.png',
            text_1: 'Get 20 % Discount',
            text_2: 'Get 20% discount offer on buying\nWatermelon today.',
            text_3: '2 days ago',
            isUnderlined: false,
          ),
        ],
      ),
    );
  }
}

class MyNotificationCard extends StatelessWidget {
  final String image;
  final String text_1;
  final String text_2;
  final String text_3;
  final bool isUnderlined;

  const MyNotificationCard({
    required this.image,
    required this.text_1,
    required this.text_2,
    required this.text_3,
    required this.isUnderlined,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text(text_1, style: text1),
                      SizedBox(height: 5),
                      Text(text_2, style: text11),
                      SizedBox(height: 10),
                      Text(text_3, style: text12),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        isUnderlined == true
            ? Divider(thickness: 1, color: Color(0xFFD1D1D1))
            : Container(),
      ],
    );
  }
}
