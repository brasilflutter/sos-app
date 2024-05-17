import 'package:sos/views/home/home_states.dart';
import 'package:sos/views/home/home_view_factory.dart';
import 'package:sos/views/home/home_views.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeViewFactory Tests', () {
    testWidgets('HomeViewFactory.loading returns HomeLoadingView', (WidgetTester tester) async {
      final loadingState = HomeLoadingState();
      final loadingView = HomeViewFactory.loading(loadingState);

      expect(loadingView, isA<HomeLoadingView>());
    });

    testWidgets('HomeViewFactory.success returns HomeSuccessView', (WidgetTester tester) async {
      final successState = HomeSuccessState(text: 'Success', onClick: (_) {});
      final successView = HomeViewFactory.success(successState);

      expect(successView, isA<HomeSuccessView>());
    });

    testWidgets('HomeViewFactory.error returns HomeErrorView', (WidgetTester tester) async {
      final errorState = HomeErrorState(message: 'Error');
      final errorView = HomeViewFactory.error(errorState);

      expect(errorView, isA<HomeErrorView>());
    });
  });
}
