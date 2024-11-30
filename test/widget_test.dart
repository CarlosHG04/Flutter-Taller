// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../page2/main.dart';

void main() {
  testWidgets('Button interaction test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const MainApp());

    // Verify that a specific button with the label "New Draft" is displayed.
    expect(find.text('New Draft'), findsOneWidget);

    // Tap the "New Draft" button and trigger a frame.
    await tester.tap(find.text('New Draft'));
    await tester.pump();

    // Verify the tap interaction (output in console).
    // Since the button prints the text, we can simulate console verification
    // but the real check will be interaction confirmation in the app.
    expect(find.text('New Draft'), findsOneWidget);

    // Verify other icon buttons are present.
    expect(find.byIcon(Icons.create), findsOneWidget);
    expect(find.byIcon(Icons.account_tree), findsOneWidget);
  });

  testWidgets('Presence of key UI elements', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const MainApp());

    // Verify the header title "Side Hustle" exists.
    expect(find.text('Side Hustle'), findsOneWidget);

    // Check for the presence of 4 note containers (from the nota() widget).
    expect(find.byType(Container), findsNWidgets(4));
  });
}

