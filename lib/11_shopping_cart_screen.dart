import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ShoppingCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          Center(
            child: Text('Shopping Cart'),
          ),
        ],
      ),
    );
  }
}
