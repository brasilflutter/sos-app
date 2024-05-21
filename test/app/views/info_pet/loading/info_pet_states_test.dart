import 'package:flutter_test/flutter_test.dart';

import 'info_pet_mock_loading_state.dart';

void main() {
  test('validate state loading', () async {
    final state = InfoPetMockLoadingState();
    expect(state, isNotNull);
  });
}
