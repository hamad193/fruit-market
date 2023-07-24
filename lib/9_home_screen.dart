import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/16_notifications.dart';
import 'package:fruit_market/9.1_vegitables_tab.dart';
import 'package:fruit_market/9.2_fruits_tab.dart';
import 'package:fruit_market/9.3_dryFruits_tab.dart';
import 'package:fruit_market/text_styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 124,
                    width: double.infinity,
                    color: Colors.transparent,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 104,
                    width: double.infinity,
                    color: greenColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Fruit Market', style: text3),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NotificationsScreen()));
                          },
                          child: Icon(CupertinoIcons.bell_solid,
                              color: Colors.white, size: 20),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 20,
                    child: SizedBox(
                      height: 46,
                      width: MediaQuery.of(context).size.width - 40,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation: 10,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Container(
                      height: 26,
                      child: TabBar(
                        unselectedLabelColor: Color(0xFF989898),
                        labelColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                          color: Color(0xFFCC7D00),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        tabs: [
                          Tab(text: '   Vegetables   '),
                          Tab(text: '   Fruits   '),
                          Tab(text: '   Dry Fruits   '),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 246,
                    child: TabBarView(
                      children: [
                        VegetablesTab(),
                        FruitsTab(),
                        DryFruitsTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
