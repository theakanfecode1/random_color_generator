import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_generator/screens/color_generator_screen.dart';

void main() {
  testWidgets('App UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: ColorGeneratorScreen()));

    // Verify that the initial state contains 'Hello there' text.
    expect(find.text('Hello there'), findsOneWidget);

    // Verify that the initial state contains the RGB text.
    expect(find.text('RGB: 0, 0, 0'), findsOneWidget);

    // Tap the screen to change the color.
    final changeColorButton = Key('change_color_button');
    await tester.tap(find.byKey(changeColorButton));
    await tester.pump();

    // Verify that the color has changed.
    expect(find.text('RGB: 0, 0, 0'), findsNothing);

    // Tap the reset button to reset the color.
    final resetColorButton = Key('reset_color_button');
    await tester.tap(find.byKey(resetColorButton));
    await tester.pump();

    // Verify that the color has reset to black.
    expect(find.text('Hello there'), findsOneWidget);
    expect(find.text('RGB: 0, 0, 0'), findsOneWidget);
  });
}
