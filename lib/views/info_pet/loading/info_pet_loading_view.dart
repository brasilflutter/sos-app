import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'info_pet_loading_state.dart';

class InfoPetLoadingView extends LoadingBaseView<InfoPetLoadingState> {
  const InfoPetLoadingView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return const CircularProgressIndicator();
  }
}
