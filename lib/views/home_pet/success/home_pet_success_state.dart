import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';
import 'package:sos/core/core.dart';

class HomePetSuccessState extends SuccessBaseState {
  final String text;
  final Function() micOnPressed;
  final Function(String) onTapSearchPet;
  final TextEditingController seachPetController;
  final int indexCategory;
  final List<CategoryPetEntity> categoryPetList;
  final List<PetEntity> petList;
  final Function(int) onTapCategoryPet;
  final Function() onTapAddNewPet;
  final Function(String) toNavigatePetInfo;

  HomePetSuccessState({
    required this.text,
    required this.micOnPressed,
    required this.onTapSearchPet,
    required this.seachPetController,
    required this.indexCategory,
    required this.categoryPetList,
    required this.petList,
    required this.onTapCategoryPet,
    required this.onTapAddNewPet,
    required this.toNavigatePetInfo,
  });

  HomePetSuccessState copyWith({
    String? text,
    Color? backgroundColorCategoryPet,
    Function()? micOnPressed,
    TextEditingController? seachPetController,
    Function(String)? onTapSearchPet,
    int? indexCategory,
    List<CategoryPetEntity>? categoryPetList,
    List<PetEntity>? petList,
    Function(int)? onTapCategoryPet,
    Function()? onTapAddNewPet,
    Function(String)? toNavigatePetInfo,
  }) {
    return HomePetSuccessState(
      text: text ?? this.text,
      micOnPressed: micOnPressed ?? this.micOnPressed,
      indexCategory: indexCategory ?? this.indexCategory,
      seachPetController: seachPetController ?? this.seachPetController,
      onTapSearchPet: onTapSearchPet ?? this.onTapSearchPet,
      categoryPetList: categoryPetList ?? this.categoryPetList,
      petList: petList ?? this.petList,
      onTapCategoryPet: onTapCategoryPet ?? this.onTapCategoryPet,
      onTapAddNewPet: onTapAddNewPet ?? this.onTapAddNewPet,
      toNavigatePetInfo: toNavigatePetInfo ?? this.toNavigatePetInfo,
    );
  }
}
