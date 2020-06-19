import 'package:flutter/material.dart';

const TextStyle labelStyle =
    TextStyle(color: Color(0xff8D8E98), fontSize: 18.0);

class IconContent extends StatelessWidget {
  final String label;
  final IconData iconName;
  IconContent({this.label, this.iconName});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(label, style: labelStyle),
      ],
    );
  }
}
