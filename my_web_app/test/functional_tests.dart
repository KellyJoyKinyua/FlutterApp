import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:my_web_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

//Launchaes the app and updates the UI after tapping the button

  testWidgets('launches the app and updates the UI after tapping the button', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
//Verifies that the initial UI is displayed correctly

    expect(find.text('Flutter Web App'), findsOneWidget);
    expect(find.text('Hello Flutter Web'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);

    await tester.tap(find.text('Hello Flutter Web'));
    await tester.pumpAndSettle();
//Verifies that the UI is updated correctly after tapping the button
    expect(find.text('Button Tapped'), findsOneWidget);
    expect(find.text('Hello Flutter Web'), findsNothing);
  });
}