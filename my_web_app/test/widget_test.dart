import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_web_app/main.dart';

void main() {
  testWidgets('Home page updates when the button is tapped', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Flutter Web App'), findsOneWidget);
    expect(find.text('Hello Flutter Web'), findsOneWidget);

    await tester.tap(find.text('Hello Flutter Web'));
    await tester.pump();

    expect(find.text('Button Tapped'), findsOneWidget);
  });
}
