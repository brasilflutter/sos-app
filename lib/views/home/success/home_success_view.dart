import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'home_success_state.dart';

class HomeSuccessView extends SuccessBaseView<HomeSuccessState> {
  const HomeSuccessView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return ElevatedButton(
      onPressed: state.onClick,
      child: Text(state.text),
    );
  }
}
