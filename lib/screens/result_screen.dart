import 'package:flutter/material.dart';
import 'package:mybmi/components/buttom_button.dart';
import 'package:mybmi/components/reusable_card.dart';

import '../constants.dart';

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
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your results', style: kNumberStyle),
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
                    Text(bmiResultText.toUpperCase(), style: kResultTextStyle),
                    Text(bmi, style: kLargeNumberStyle),
                    Text(
                      bmiResultInterpretation,
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
