import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'locate_pet_loading_state.dart';

class LocatePetLoadingView extends LoadingBaseView<LocatePetLoadingState> {
  const LocatePetLoadingView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return const CircularProgressIndicator();
  }
}
