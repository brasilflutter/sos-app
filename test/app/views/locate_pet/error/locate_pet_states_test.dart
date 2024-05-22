import 'package:flutter_test/flutter_test.dart';

import 'locate_pet_mock_error_state.dart';

void main() {
  test('validate state error', () async {
    final state = LocatePetMockErrorState(message: 'Test');
    expect(state.message, 'Test');
  });
}
