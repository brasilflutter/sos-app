import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'home_error_state.dart';

class HomeErrorView extends ErrorBaseView<HomeErrorState> {
  const HomeErrorView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return Text(state.message);
  }
}
