import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/13.3_settings.dart';
import 'package:fruit_market/13.5_help_screen.dart';
import 'package:fruit_market/custom_list_tile.dart';
import 'package:fruit_market/text_styles.dart';

class MyAccountScreen extends StatefulWidget {
  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: greenColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: 0,
                        child: Icon(Icons.edit, color: Colors.white),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 34,
                          backgroundColor: Colors.black,
                          child: FlutterLogo(size: 48),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.edit, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Manish Chutake', style: text9),
                      SizedBox(height: 6),
                      Text('manishuxuid@gmail.com', style: text8),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  MyListTile(
                    onPress: () {},
                    leadingIcon: Icons.shopping_bag,
                    label: 'My Orders',
                    bottomBorder: true,
                    subtitleText: '',
                    subtitle: false,
                    trailingSwitch: false,
                  ),
                  MyListTile(
                    onPress: () {},
                    bottomBorder: true,
                    leadingIcon: Icons.favorite,
                    label: 'Favourites',
                    subtitleText: '',
                    subtitle: false,
                    trailingSwitch: false,
                  ),
                  MyListTile(
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
                    },
                    bottomBorder: true,
                    leadingIcon: Icons.settings,
                    label: 'Settings',
                    subtitleText: '',
                    subtitle: false,
                    trailingSwitch: false,
                  ),
                  MyListTile(
                    onPress: () {},
                    bottomBorder: true,
                    leadingIcon: Icons.feedback,
                    label: 'Rate us',
                    subtitleText: '',
                    subtitle: false,
                    trailingSwitch: false,
                  ),
                  MyListTile(
                    onPress: () {},
                    bottomBorder: true,
                    leadingIcon: Icons.share,
                    label: 'Refer a Friend',
                    subtitleText: '',
                    subtitle: false,
                    trailingSwitch: false,
                  ),
                  MyListTile(
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HelpScreen()));
                    },
                    bottomBorder: true,
                    leadingIcon: Icons.help,
                    label: 'Help',
                    subtitleText: '',
                    subtitle: false,
                    trailingSwitch: false,
                  ),
                  MyListTile(
                    onPress: () {},
                    bottomBorder: false,
                    leadingIcon: Icons.logout,
                    label: 'Log Out',
                    subtitleText: '',
                    subtitle: false,
                    trailingSwitch: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
