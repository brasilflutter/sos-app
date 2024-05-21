import 'package:flutter_test/flutter_test.dart';

import 'info_pet_mock_success_state.dart';

void main() {
  test('validate state success', () async {
    final state = InfoPetMockSuccessState(
      text: "Realizado com sucesso!",
      onClick: (state) => print("Button pressed"),
    );
    expect(state, isNotNull);
    expect(state.text, "Realizado com sucesso!");
  });
}
