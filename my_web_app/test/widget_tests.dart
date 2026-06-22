import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_web_app/main.dart';

void main() {
  testWidgets('MyApp builds the expected MaterialApp shell', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));

    expect(materialApp.title, 'Flutter Web Demo');
    expect(materialApp.debugShowCheckedModeBanner, isFalse);
    expect(materialApp.home, isA<HomePage>());
  });

  testWidgets('HomePage shows the initial UI state', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Flutter Web App'), findsOneWidget);
    expect(find.text('Hello Flutter Web'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });

  testWidgets('Tapping the button updates the UI', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Hello Flutter Web'));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(find.text('Flutter Web App'), findsOneWidget);
    expect(find.text('Button Tapped'), findsOneWidget);
    expect(find.text('Hello Flutter Web'), findsNothing);
  });
}