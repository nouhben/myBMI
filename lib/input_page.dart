import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybmi/reusable_card.dart';

import 'icon_content.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xff1D1E33);
const Color bottomContainerColor = Color(0xffEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  childCard: IconContent(
                    label: 'MALE',
                    iconName: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  childCard: IconContent(
                    label: 'FEMALE',
                    iconName: FontAwesomeIcons.venus,
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Calculate BMI',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
