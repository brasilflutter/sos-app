import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'locate_pet_error_state.dart';

class LocatePetErrorView extends ErrorBaseView<LocatePetErrorState> {
  const LocatePetErrorView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return Text(state.message);
  }
}
