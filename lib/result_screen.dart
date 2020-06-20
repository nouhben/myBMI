import 'package:flutter/material.dart';
import 'package:mybmi/buttom_button.dart';
import 'package:mybmi/reusable_card.dart';

import 'constants.dart';

class ResultScreen extends StatelessWidget {
  final String bmi;
  final String bmiResultText;
  final String bmiResultInterpretation;
  ResultScreen({this.bmi, this.bmiResultText, this.bmiResultInterpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULTOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                'Your results',
                style: kNumberStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
              flex: 8,
              child: ReusableCard(
                colour: kActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Overweight', style: kResultTextStyle),
                    Text('20.9', style: kLargeNumberStyle),
                    Text(
                      'You have a higher than normal body weight jkhfkjhfdkjh',
                      style: kInterpretationTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
