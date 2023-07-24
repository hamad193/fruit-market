import 'package:flutter/material.dart';
import 'package:fruit_market/custom_list_tile.dart';

class AccountSettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Account Setting',
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
          MyListTile(onPress: () {}, leadingIcon: Icons.verified_user_rounded, label: 'Security', subtitleText: '', subtitle: false, bottomBorder: true, trailingSwitch: false),
          MyListTile(onPress: () {}, leadingIcon: Icons.highlight_remove, label: 'Deactivate Account', subtitleText: '', subtitle: false, bottomBorder: true, trailingSwitch: false),
          MyListTile(onPress: () {}, leadingIcon: Icons.delete, label: 'Delete Account', subtitleText: '', subtitle: false, bottomBorder: false, trailingSwitch: false),
        ],
      ),
    );
  }
}
