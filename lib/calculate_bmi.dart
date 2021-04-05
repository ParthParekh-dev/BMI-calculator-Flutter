import 'dart:math';
import 'package:flutter/cupertino.dart';

class CalculateBmi {
  CalculateBmi({@required this.height, @required this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calulate() {
    _bmi = weight / pow(height / 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getComment() {
    if (_bmi >= 25) {
      return 'You have higher than normal weight\nPlease excercie more often.';
    } else if (_bmi >= 18.5) {
      return 'Awesome! You have a healthy body. Stay happy.';
    } else {
      return 'You have lower than normal weight\nPlease eat well.';
    }
  }
}
