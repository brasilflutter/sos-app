import 'package:flutter/material.dart';
import 'package:framework_sos/reactive_state_manager/base_view/base_views.dart';
import 'map_search_success_state.dart';

class MapSearchSuccessView extends SuccessBaseView<MapSearchSuccessState> {
  const MapSearchSuccessView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(state.text),
         
        ],
      ),
    );
  }
}
