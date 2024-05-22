import 'package:flutter_test/flutter_test.dart';

import 'locate_pet_mock_loading_state.dart';

void main() {
  test('validate state loading', () async {
    final state = LocatePetMockLoadingState();
    expect(state, isNotNull);
  });
}
