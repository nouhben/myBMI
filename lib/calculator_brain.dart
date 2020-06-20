import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;
  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else {
      if (_bmi > 18.5) {
        return 'Normal weight';
      } else {
        return 'Underweight';
      }
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal bmi 🙄. \n Try to Exercice more \n 🏋️‍ ️🏃‍♂️ \n and Eat less \n 🍔🍺';
    } else {
      if (_bmi > 18.5) {
        return 'You have a normal bmi. Keep up the good work \n 😎 🍳 💪';
      } else {
        return 'You have a lower than normal bmi 🤕. \n Try to Exercice more 🏃 \n and Eat more 🥑 🥩‍';
      }
    }
  }
}
