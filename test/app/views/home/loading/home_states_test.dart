import 'package:flutter_test/flutter_test.dart';

import 'home_mock_loading_state.dart';

void main() {
  test('validate state loading', () async {
    final state = HomeMockLoadingState();
    expect(state, isNotNull);
  });
}
