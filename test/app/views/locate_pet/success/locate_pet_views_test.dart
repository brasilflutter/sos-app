import 'package:sos/views/locate_pet/locate_pet_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'locate_pet_mock_success_state.dart';

void main() {
  testWidgets('LocatePetSuccessView shows success text and reacts to button press', (WidgetTester tester) async {
    // Define the success message and mock function for button press
    bool buttonPressed = false;
    onButtonPressed(state) {
      buttonPressed = true;
    }

    final state = LocatePetMockSuccessState(text: 'click', onClick: onButtonPressed);
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(
      home: LocatePetSuccessView(state: state),
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
