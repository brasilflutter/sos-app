import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'home_states.dart';
import 'home_views.dart';

class HomeViewFactory {
  static LoadingBaseView<HomeLoadingState> loading(HomeLoadingState state) => HomeLoadingView(state: state);

  static SuccessBaseView<HomeSuccessState> success(HomeSuccessState state) => HomeSuccessView(state: state);

  static ErrorBaseView<HomeErrorState> error(HomeErrorState state) => HomeErrorView(state: state);
}

class ExampleHomeViewFactory extends StatelessWidget {
  const ExampleHomeViewFactory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
            child: Column(
          children: [
            HomeViewFactory.error(HomeErrorState(message: 'Error message')),
            HomeViewFactory.loading(HomeLoadingState()),
            HomeViewFactory.success(HomeSuccessState(text: 'Success text', onClick: (state) {})),
          ],
        )),
      ),
    );
  }
}
