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
      return 'Overweight: you have a higher than normal bmi 🙄. Try to Exercice more 🏃 and Eat less 🥦‍';
    } else {
      if (_bmi > 18.5) {
        return 'Normal weight: you have a bmi. Keep up the good work 😎';
      } else {
        return 'Underweight: you have a lower than normal bmi 🤕. Try to Exercice more 🏃 and Eat more 🥑‍';
      }
    }
  }
}
