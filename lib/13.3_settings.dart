import 'package:flutter/material.dart';
import 'package:fruit_market/13.3.1_account_settings.dart';
import 'package:fruit_market/13.3.2_notification_setting.dart';
import 'package:fruit_market/13.3.3_language_setting.dart';
import 'package:fruit_market/13.3.4_change_address.dart';
import 'package:fruit_market/custom_list_tile.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Settings',
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
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccountSettingScreen()));
              },
              leadingIcon: Icons.account_circle,
              label: 'Account',
              subtitleText: '',
              subtitle: false,
              bottomBorder: true,
              trailingSwitch: false),
          MyListTile(
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationSetting()));
              },
              leadingIcon: Icons.notifications,
              label: 'Notifications',
              subtitleText: '',
              subtitle: false,
              bottomBorder: true,
              trailingSwitch: false),
          MyListTile(
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LanguageSettingScreen()));
              },
              leadingIcon: Icons.language,
              label: 'Language',
              subtitleText: '',
              subtitle: false,
              bottomBorder: true,
              trailingSwitch: false),
          MyListTile(
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChangeAddressScreen()));
              },
              leadingIcon: Icons.location_on_rounded,
              label: 'Change Address',
              subtitleText: '',
              subtitle: false,
              bottomBorder: false,
              trailingSwitch: false),
        ],
      ),
    );
  }
}
