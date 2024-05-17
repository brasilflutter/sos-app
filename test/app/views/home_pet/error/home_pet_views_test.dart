import 'package:sos/views/home_pet/home_pet_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'home_pet_mock_error_state.dart';

void main() {
  testWidgets('HomePetErrorView handles state correctly', (WidgetTester tester) async {
    // Usar o mock
    final mockState = HomePetMockErrorState(message: "Erro simulado");

    // Certifique-se de envolver o seu widget em um MaterialApp ou similar, se necessário
    await tester.pumpWidget(MaterialApp(home: HomePetErrorView(state: mockState)));
    // Verifique se não há exceções lançadas durante a construção do widget
    // expect(tester.takeException(), isNull);

    // Outras verificações podem ser adicionadas aqui, como verificar se o texto está presente
    // expect(find.text("Erro simulado"), findsOneWidget);
  });
}
