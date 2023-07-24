import 'package:flutter/material.dart';
import 'package:fruit_market/custom_list_tile.dart';

class NotificationSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Notification Setting',
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
        physics: NeverScrollableScrollPhysics(),
        children: [
          MyListTile(
              onPress: () {},
              leadingIcon: Icons.notifications,
              label: 'My Account',
              subtitleText: 'You will receive daily updates',
              subtitle: true,
              bottomBorder: true,
              trailingSwitch: true),
          MyListTile(
              onPress: () {},
              leadingIcon: Icons.notifications,
              label: 'Promotional Notifications',
              subtitleText: 'You will receive daily updates',
              subtitle: true,
              bottomBorder: false,
              trailingSwitch: true),
        ],
      ),
    );
  }
}
