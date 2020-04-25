import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    this._bmi = weight / pow(height / 100, 2);
    print(this._bmi);
    return this._bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi == null) {
      print('test why null get result');
      return 'null';
    }

    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi == null) {
      print('why null get interpretation');
      return 'null';
    }

    if (_bmi >= 25.0) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
