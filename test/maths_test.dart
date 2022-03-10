import 'package:flutter_test/flutter_test.dart';
import 'package:testing_in_flutter/maths.dart';

void main() {
  test('Addition of two numbers', () {
    final maths = Maths(0);

    maths.addition(10, 12);

    expect(maths.answerNumber, 22);
  });

   test('Subtraction of two numbers', () {
    final maths = Maths(0);

    maths.subtration(12, 10);

    expect(maths.answerNumber, 2);
  });

}
