import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double get _bmi => (weight / pow(height, 2)) * 703;

  CalculatorBrain({
    this.height,
    this.weight,
  });

  String calculateBMI() => _bmi.toStringAsFixed(1);

  String getResult() {
    String result;
    if (_bmi < 18.5) {
      result = 'UNDERWEIGHT';
    } else if (_bmi < 25) {
      result = 'NORMAL WEIGHT';
    } else if (_bmi < 30) {
      result = 'OVERWEIGHT';
    } else {
      result = 'OBESE';
    }
    return result;
  }

  String detailText() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. Eat some cake.';
    }
  }
}
