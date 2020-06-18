import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            letterSpacing: 2.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
//      theme: ThemeData(
//        primaryColor: Color(0xff0A0E21),
//        scaffoldBackgroundColor: Color(0xff0A0E21),
//        textTheme: TextTheme(
//          body1: TextStyle(
//            color: Colors.white,
//            fontSize: 18.0,
//            letterSpacing: 2.0,
//            fontWeight: FontWeight.w600,
//          ),
//        ),
//        accentColor: Colors.redAccent[400],
//      ),
      home: InputPage(),
    );
  }
}
