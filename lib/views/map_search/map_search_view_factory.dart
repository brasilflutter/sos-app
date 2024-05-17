import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'map_search_states.dart';
import 'map_search_views.dart';

class MapSearchViewFactory {
  static LoadingBaseView<MapSearchLoadingState> loading(MapSearchLoadingState state) => MapSearchLoadingView(state: state);

  static SuccessBaseView<MapSearchSuccessState> success(MapSearchSuccessState state) => MapSearchSuccessView(state: state);

  static ErrorBaseView<MapSearchErrorState> error(MapSearchErrorState state) => MapSearchErrorView(state: state);
}

class ExampleMapSearchViewFactory extends StatelessWidget {
  const ExampleMapSearchViewFactory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MapSearchViewFactory.success(MapSearchSuccessState(text: '', onClick: (MapSearchSuccessState state) {  })),
    );
  }
}
