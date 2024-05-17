import 'package:flutter_test/flutter_test.dart';

import 'home_pet_mock_loading_state.dart';

void main() {
  test('validate state loading', () async {
    final state = HomePetMockLoadingState();
    expect(state, isNotNull);
  });
}
