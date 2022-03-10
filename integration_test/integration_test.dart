import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test/my_home_page_widget_test.dart';
// run flutter test integration_test/integration_test.dart
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Integration testing', () {
    testWidgets(
        'My home Page Widget Testing', (tester) => myHomePageTest(tester));
  });
}
