import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'info_pet_states.dart';
import 'info_pet_views.dart';

class InfoPetViewFactory {
  static LoadingBaseView<InfoPetLoadingState> loading(InfoPetLoadingState state) => InfoPetLoadingView(state: state);

  static SuccessBaseView<InfoPetSuccessState> success(InfoPetSuccessState state) => InfoPetSuccessView(state: state);

  static ErrorBaseView<InfoPetErrorState> error(InfoPetErrorState state) => InfoPetErrorView(state: state);
}

class ExampleInfoPetViewFactory extends StatelessWidget {
  const ExampleInfoPetViewFactory({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoPetViewFactory.success(InfoPetSuccessState(text: 'Success text', onClick: (state) {}));
  }
}
