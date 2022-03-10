import 'package:flutter/material.dart';

class Maths extends ChangeNotifier {
  int _answerNumber;

  Maths(this._answerNumber);

  int get answerNumber => _answerNumber;

  void addition(int number1, int number2) {
    _answerNumber = number1 + number2;
    notifyListeners();
  }

  void subtration(int number1, int number2) {
    _answerNumber = number1 - number2;
    notifyListeners();
  }
}
