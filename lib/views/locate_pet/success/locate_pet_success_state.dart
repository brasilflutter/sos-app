import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';

class LocatePetSuccessState extends SuccessBaseState {
  final TextEditingController controllerLocationPetMicroChip;
  final String imageText;
  bool validImage = false;
  final Function(bool) onValidImage;
  final Function(String) locationPetMicroChip;

  LocatePetSuccessState({
    required this.imageText,
    required this.validImage,
    required this.onValidImage,
    required this.controllerLocationPetMicroChip,
    required this.locationPetMicroChip,
  });

  LocatePetSuccessState copyWith({
    TextEditingController? controllerLocationPetMicroChip,
    String? imageText,
    bool? validImage,
    Function(bool)? onValidImage,
    Function(String)? locationPetMicroChip,
  }) {
    return LocatePetSuccessState(
      controllerLocationPetMicroChip: controllerLocationPetMicroChip ?? this.controllerLocationPetMicroChip,
      imageText: imageText ?? this.imageText,
      onValidImage: onValidImage ?? this.onValidImage,
      validImage: validImage ?? this.validImage,
      locationPetMicroChip: locationPetMicroChip ?? this.locationPetMicroChip,
    );
  }
}
