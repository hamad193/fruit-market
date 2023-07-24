import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/12_favorite_screen.dart';
import 'package:fruit_market/13_my_account_screen.dart';
import 'package:fruit_market/text_styles.dart';
import '11_shopping_cart_screen.dart';
import '9_home_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  @override
  _BottomNavigationBarScreenState createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  List _pages = [
    HomeScreen(),
    ShoppingCartScreen(),
    FavoriteScreen(),
    MyAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedItemColor: Color(0xFF838181),
        selectedItemColor: greenColor,
        selectedFontSize: 12,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 60,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart), label: 'Shopping Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'My Account'),
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
    );
  }
}
