import 'package:sos/views/info_pet/info_pet_states.dart';
import 'package:sos/views/info_pet/info_pet_view_factory.dart';
import 'package:sos/views/info_pet/info_pet_views.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InfoPetViewFactory Tests', () {
    testWidgets('InfoPetViewFactory.loading returns InfoPetLoadingView', (WidgetTester tester) async {
      final loadingState = InfoPetLoadingState();
      final loadingView = InfoPetViewFactory.loading(loadingState);

      expect(loadingView, isA<InfoPetLoadingView>());
    });

    testWidgets('InfoPetViewFactory.success returns InfoPetSuccessView', (WidgetTester tester) async {
      final successState = InfoPetSuccessState(text: 'Success', onClick: (_) {});
      final successView = InfoPetViewFactory.success(successState);

      expect(successView, isA<InfoPetSuccessView>());
    });

    testWidgets('InfoPetViewFactory.error returns InfoPetErrorView', (WidgetTester tester) async {
      final errorState = InfoPetErrorState(message: 'Error');
      final errorView = InfoPetViewFactory.error(errorState);

      expect(errorView, isA<InfoPetErrorView>());
    });
  });
}
