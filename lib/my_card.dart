import 'package:flutter/material.dart';
import 'package:fruit_market/10_details_screen.dart';
import 'package:fruit_market/text_styles.dart';

class MyCard extends StatefulWidget {
  final String name;
  final double price;
  final String image;

  MyCard({required this.name, required this.price, required this.image});

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool _favourite = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailsScreen(
                      dName: widget.name,
                      dPrice: widget.price,
                      dImage: widget.image,
                    )));
          },
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 118,
                  height: 143,
                  padding: EdgeInsets.fromLTRB(0, 10, 12, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _favourite = !_favourite;
                          });
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Icon(
                              _favourite
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                              size: 20,
                              color:
                                  _favourite ? Color(0xFFEDCB15) : Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                  ],
                ),
                SizedBox(height: 5),
                Text(widget.name, style: text1),
                SizedBox(height: 5),
                Text('₹ ' + widget.price.round().toString() + ' per/kg',
                    style: text5),
              ],
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
