import 'package:flutter/material.dart';
import 'package:fruit_market/text_styles.dart';

class MyListTile extends StatefulWidget {
  const MyListTile({
    Key? key,
    required this.onPress,
    required this.leadingIcon,
    required this.label,
    required this.subtitleText,
    required this.subtitle,
    required this.bottomBorder,
    required this.trailingSwitch,
  }) : super(key: key);

  final onPress;
  final bool bottomBorder;
  final String label;
  final leadingIcon;
  final bool subtitle;
  final String subtitleText;
  final bool trailingSwitch;

  @override
  _MyListTileState createState() => _MyListTileState();
}

bool _switchValue = false;

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onPress,
      title: Text(widget.label),
      leading: Icon(widget.leadingIcon, color: greenColor, size: 28),
      shape: Border(
        bottom: widget.bottomBorder == true
            ? BorderSide(width: 0.5, color: Color(0xFFD1D1D1))
            : BorderSide.none,
      ),
      subtitle: widget.subtitle == true ? Text(widget.subtitleText) : null,
      trailing: widget.trailingSwitch == true
          ? Switch(
              onChanged: (bool) {
                setState(() {
                  _switchValue = !_switchValue;
                });
              },
              value: _switchValue,
              activeColor: greenColor,
            )
          : null,
    );
  }
}
