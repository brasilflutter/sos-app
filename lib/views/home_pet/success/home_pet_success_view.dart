import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'home_pet_success_state.dart';

class HomePetSuccessView extends SuccessBaseView<HomePetSuccessState> {
  const HomePetSuccessView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: state.onClick,
        child: Text(state.text),
      ),
    );
  }
}
