import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_in_flutter/main.dart';

void main() {
  testWidgets(
      'My home Page Widget Testing', (tester) => myHomePageTest(tester));
}

Future<void> myHomePageTest(WidgetTester tester) async {
  // Portrait
  // await tester.setScreenSize(size: Size(540, 960));
  await tester.pumpWidget(const MaterialApp(home: MyHomePage(title: 'Title')));

  // await expectLater(
  //     find.byType(MyHomePage), matchesGoldenFile('my_home_page540x960.png'));

// Landscape
  // await tester.setScreenSize(size: Size(960, 540));
  // await tester.pumpWidget(const MaterialApp(home: MyHomePage(title: 'Title')));

  // await expectLater(
  //     find.byType(MyHomePage), matchesGoldenFile('my_home_page960x540.png'));

  // await tester.setScreenSize(size: Size(1440, 2560));
  // await tester.pumpWidget(const MaterialApp(home: MyHomePage(title: 'Title')));

  // await expectLater(
  //     find.byType(MyHomePage), matchesGoldenFile('my_home_page1440x2560.png'));

  //Setting default screen size for future test
  // addTearDown(tester.binding.window.clearPhysicalSizeTestValue);

  // check if widget is present on screen
  final addButton = find.byKey(addButtonKey);
  expect(addButton, findsOneWidget);

  final subtractButton = find.byKey(subtractButtonKey);
  expect(subtractButton, findsOneWidget);

  // check counter value should be 0
  final counterText = tester.widget<Text>(find.byKey(counterTextKey));
  expect(counterText.data, '0');

  // press the add counter button
  await tester.tap(find.byKey(addButtonKey));
  await tester.pumpAndSettle(const Duration(milliseconds: 500));

  // check counter value should be 1

  final counterTextAfterAddButtonClick =
      tester.widget<Text>(find.byKey(counterTextKey));
  expect(counterTextAfterAddButtonClick.data, '1');

  await tester.tap(find.byKey(subtractButtonKey));
  await tester.pumpAndSettle(const Duration(milliseconds: 500));

  // check counter value should be 0 after subtracting value from 1

  final counterTextAfterSubtractButtonClick =
      tester.widget<Text>(find.byKey(counterTextKey));
  expect(counterTextAfterSubtractButtonClick.data, '0');
}

extension SetScreenSize on WidgetTester {
  Future<void> setScreenSize({required Size size}) async {
    await this.binding.setSurfaceSize(size);
    this.binding.window.physicalSizeTestValue = size;
    this.binding.window.devicePixelRatioTestValue = .75;
  }
}
