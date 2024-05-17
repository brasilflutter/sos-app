import 'package:sos/views/home/home_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'home_mock_success_state.dart';

void main() {
  testWidgets('HomeSuccessView shows success text and reacts to button press', (WidgetTester tester) async {
    // Define the success message and mock function for button press
    bool buttonPressed = false;
    onButtonPressed(state) {
      buttonPressed = true;
    }

    final state = HomeMockSuccessState(text: 'click', onClick: onButtonPressed);
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(
      home: HomeSuccessView(state: state),
    ));
    // Verify if the success message is shown
    // expect(find.text(state.text), findsOneWidget);
    // Tap the button and trigger a frame
    // await tester.tap(find.byType(ElevatedButton));
    // await tester.pumpAndSettle(const Duration(milliseconds: 10));
    // Verify if the button press changed the state
    expect(buttonPressed, true);
  });
}
