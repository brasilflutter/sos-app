import 'package:flutter/material.dart';
import 'package:framework_sos/reactive_state_manager/base_view/base_views.dart';
import 'map_search_loading_state.dart';

class MapSearchLoadingView extends LoadingBaseView<MapSearchLoadingState> {
  const MapSearchLoadingView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    // TODO: implement buildView loading
    throw UnimplementedError('buildView loading is not implemented');
    // return CircularProgressIndicator();
  }
}
