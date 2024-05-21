import 'package:flutter_test/flutter_test.dart';

import 'info_pet_mock_error_state.dart';

void main() {
  test('validate state error', () async {
    final state = InfoPetMockErrorState(message: 'Test');
    expect(state.message, 'Test');
  });
}
