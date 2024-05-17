import 'package:flutter_test/flutter_test.dart';

import 'home_pet_mock_error_state.dart';

void main() {
  test('validate state error', () async {
    final state = HomePetMockErrorState(message: 'Test');
    expect(state.message, 'Test');
  });
}
