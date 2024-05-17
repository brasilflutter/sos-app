import 'package:flutter/material.dart';
import 'package:framework_sos/reactive_state_manager/base_view/base_views.dart';
import 'map_search_error_state.dart';

class MapSearchErrorView extends ErrorBaseView<MapSearchErrorState> {
  const MapSearchErrorView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    // TODO: implement buildView error
    throw UnimplementedError('buildView error is not implemented');
    // return Text(state.message);
  }
}
