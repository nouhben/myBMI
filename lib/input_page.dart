import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybmi/reusable_card.dart';

import 'constants.dart';
import 'icon_content.dart';

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
  int _height = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      ? kActiveCardColor
                      : kInactiveCardColor,
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
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  childCard: IconContent(
                    label: 'FEMALE',
                    iconName: FontAwesomeIcons.venus,
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kLabelStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //textBaseline: TextBaseline.alphabetic, i used padding instead of this
                    children: [
                      Text(_height.toString(), style: kNumberStyle),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text('CM', style: kLabelStyle),
                      ),
                    ],
                  ),
                  //in order to change the thumb size and color we have to implement
                  //slider theme data but it has a lot so we use a shortcut
                  // which is sliderThem.of(context).copywith() this will copy the themeData of the
                  //closest slider
                  // context is simply the state or how the app looks right now
                  //that will copy default styling and i can override what i want

                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      //customize what i want
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      thumbColor: kBottomContainerColor,
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                      overlayColor: Color(0x29EB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xff8D8E98),
                    ),
                    child: Slider(
                      value: _height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          _height = newValue.round();
                        });
                      },
                      min: 50.0,
                      max: 250.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: kBottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
            color: kBottomContainerColor,
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
