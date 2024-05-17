import 'package:sos/views/home_pet/home_pet_states.dart';
import 'package:sos/views/home_pet/home_pet_view_factory.dart';
import 'package:sos/views/home_pet/home_pet_views.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomePetViewFactory Tests', () {
    testWidgets('HomePetViewFactory.loading returns HomePetLoadingView', (WidgetTester tester) async {
      final loadingState = HomePetLoadingState();
      final loadingView = HomePetViewFactory.loading(loadingState);

      expect(loadingView, isA<HomePetLoadingView>());
    });

    testWidgets('HomePetViewFactory.success returns HomePetSuccessView', (WidgetTester tester) async {
      final successState = HomePetSuccessState(text: 'Success', onClick: (_) {});
      final successView = HomePetViewFactory.success(successState);

      expect(successView, isA<HomePetSuccessView>());
    });

    testWidgets('HomePetViewFactory.error returns HomePetErrorView', (WidgetTester tester) async {
      final errorState = HomePetErrorState(message: 'Error');
      final errorView = HomePetViewFactory.error(errorState);

      expect(errorView, isA<HomePetErrorView>());
    });
  });
}
