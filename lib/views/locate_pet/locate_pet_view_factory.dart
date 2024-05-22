import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

import 'locate_pet_states.dart';
import 'locate_pet_views.dart';

class LocatePetViewFactory {
  static LoadingBaseView<LocatePetLoadingState> loading(LocatePetLoadingState state) => LocatePetLoadingView(state: state);

  static SuccessBaseView<LocatePetSuccessState> success(LocatePetSuccessState state) => LocatePetSuccessView(state: state);

  static ErrorBaseView<LocatePetErrorState> error(LocatePetErrorState state) => LocatePetErrorView(state: state);
}

class ExampleLocatePetViewFactory extends StatelessWidget {
  const ExampleLocatePetViewFactory({super.key});

  @override
  Widget build(BuildContext context) {
    return LocatePetViewFactory.success(LocatePetSuccessState(
      validImage: false,
      controllerLocationPetMicroChip: TextEditingController(),
      imageText: 'Image Text',
      locationPetMicroChip: (state) {},
      onValidImage: (valid) {},
    ));
  }
}
