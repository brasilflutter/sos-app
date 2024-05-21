import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'info_pet_error_state.dart';

class InfoPetErrorView extends ErrorBaseView<InfoPetErrorState> {
  const InfoPetErrorView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return Text(state.message);
  }
}
