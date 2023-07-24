import 'package:flutter/material.dart';
import 'package:fruit_market/custom_list_tile.dart';
import 'package:fruit_market/text_styles.dart';

class LanguageSettingScreen extends StatefulWidget {
  @override
  _LanguageSettingScreenState createState() => _LanguageSettingScreenState();
}

class _LanguageSettingScreenState extends State<LanguageSettingScreen> {
  String dropdownValue = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Language Setting',
          style: TextStyle(fontSize: 14),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Language', style: text10),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Language', style: text1),
                Container(
                  width: 120,
                  child: DropdownButton<String>(
                    items: <String>[
                      'English',
                      'Italian',
                      'Urdu',
                      'Pushtu',
                      'Spanish',
                      'French',
                      'Hindi',
                    ].map((String items) {
                      return DropdownMenuItem<String>(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 20,
                    iconEnabledColor: Colors.black,
                    isExpanded: true,
                    underline: Container(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
