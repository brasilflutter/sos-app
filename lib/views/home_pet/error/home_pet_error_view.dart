import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'home_pet_error_state.dart';

class HomePetErrorView extends ErrorBaseView<HomePetErrorState> {
  const HomePetErrorView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return Text(state.message);
  }
}
