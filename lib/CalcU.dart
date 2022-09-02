import 'package:flutter/material.dart';
import 'dart:math';


class Calculator {
  Calculator({required this.Height, required this.Weight});

  final int Height;
  final int Weight;
  double _bmi = 0.0;

  String CalculateBMI() {
    _bmi = Weight / pow( Height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return "Under Weight";
    } else if (18.5 <= _bmi && _bmi < 25) {
      return "Normal Weight";
    } else if (18.5 <= _bmi && _bmi < 25) {
      return "Normal Weight";
    } else if (25 <= _bmi && _bmi < 30) {
      return "Over Weight";
    } else if (30 <= _bmi && _bmi < 35) {
      return "Obese Type I";
    } else if (35 <= _bmi && _bmi < 40) {
      return "Obese Type II";
    } else {
      return "Obese Type III";
    }
  }
}
