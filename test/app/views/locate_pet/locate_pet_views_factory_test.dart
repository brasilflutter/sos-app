import 'package:sos/views/locate_pet/locate_pet_states.dart';
import 'package:sos/views/locate_pet/locate_pet_view_factory.dart';
import 'package:sos/views/locate_pet/locate_pet_views.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LocatePetViewFactory Tests', () {
    testWidgets('LocatePetViewFactory.loading returns LocatePetLoadingView', (WidgetTester tester) async {
      final loadingState = LocatePetLoadingState();
      final loadingView = LocatePetViewFactory.loading(loadingState);

      expect(loadingView, isA<LocatePetLoadingView>());
    });

    testWidgets('LocatePetViewFactory.success returns LocatePetSuccessView', (WidgetTester tester) async {
      final successState = LocatePetSuccessState(text: 'Success', onClick: (_) {});
      final successView = LocatePetViewFactory.success(successState);

      expect(successView, isA<LocatePetSuccessView>());
    });

    testWidgets('LocatePetViewFactory.error returns LocatePetErrorView', (WidgetTester tester) async {
      final errorState = LocatePetErrorState(message: 'Error');
      final errorView = LocatePetViewFactory.error(errorState);

      expect(errorView, isA<LocatePetErrorView>());
    });
  });
}
