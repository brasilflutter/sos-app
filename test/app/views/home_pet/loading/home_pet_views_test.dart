import 'package:sos/views/home_pet/home_pet_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'home_pet_mock_loading_state.dart';

void main() {
  testWidgets('Verify Widgets on screen', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(
      home: HomePetLoadingView(state: HomePetMockLoadingState()),
    ));

    // Verify if CircularProgressIndicator is shown
    // expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
