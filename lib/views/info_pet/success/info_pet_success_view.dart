import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'info_pet_success_state.dart';

class InfoPetSuccessView extends SuccessBaseView<InfoPetSuccessState> {
  const InfoPetSuccessView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Pet'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: state.onClick,
            child: Text(state.text),
          ),
        ],
      ),
    );
  }
}
