import 'package:framework_sos/framework_sos.dart';
import 'package:sos/core/core.dart';

class InfoPetSuccessState extends SuccessBaseState {
  final PetEntity petEntity;
  final Function(String) whatsapp;

  InfoPetSuccessState({
    required this.petEntity,
    required this.whatsapp,
  });

  InfoPetSuccessState copyWith({PetEntity? petEntit, Function(String?)? whatsapp}) {
    return InfoPetSuccessState(
      petEntity: petEntity ?? petEntity,
      whatsapp: whatsapp ?? this.whatsapp,
    );
  }
}
