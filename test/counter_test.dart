import 'package:flutter_test/flutter_test.dart';
import 'package:testing_in_flutter/counter.dart';

void main() {
  test('Incrementing the counter value', () {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 1);
  });

    test('Decrement the counter value', () {
    final counter = Counter();

    counter.decrement();

    expect(counter.value, -1);
  });

}
