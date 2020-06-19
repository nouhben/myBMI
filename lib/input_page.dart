import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybmi/reusable_card.dart';

import 'icon_content.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xff1D1E33);
const Color inactiveCardColor = Color(0xff111328);
const Color bottomContainerColor = Color(0xffEB1555);
enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Color maleCardColor = inactiveCardColor;
  //Color femaleCardColor = inactiveCardColor;
  //bool maleActive = false, femaleActive = false;
//  void updateColor(Gender gender) {
//    if (gender == Gender.Male) {
//      if (maleCardColor == inactiveCardColor) {
//        maleCardColor = activeCardColor;
//        femaleCardColor = inactiveCardColor;
//      } else {
//        maleCardColor = inactiveCardColor;
//      }
//    } else {
//      if (femaleCardColor == inactiveCardColor) {
//        femaleCardColor = activeCardColor;
//        maleCardColor = inactiveCardColor;
//      } else {
//        femaleCardColor = inactiveCardColor;
//      }
//    }
//  }
  Gender _selectedGender;

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
              /*
              * GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedGender = Gender.Male;
                    });
                  },
                  child: ReusableCard(
                    colour: _selectedGender == Gender.Male
                        ? activeCardColor
                        : inactiveCardColor,
                    childCard: IconContent(
                      label: 'MALE',
                      iconName: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              * */
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      _selectedGender = Gender.Male;
                    });
                  },
                  colour: _selectedGender == Gender.Male
                      ? activeCardColor
                      : inactiveCardColor,
                  childCard: IconContent(
                    label: 'MALE',
                    iconName: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      _selectedGender = Gender.Female;
                    });
                  },
                  colour: _selectedGender == Gender.Female
                      ? activeCardColor
                      : inactiveCardColor,
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
