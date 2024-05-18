import 'package:framework_sos/framework_sos.dart';
import 'package:sos/core/core.dart';

class HomePetSuccessState extends SuccessBaseState {
  final String text;
  final Function() micOnPressed;
  final List<CategoryPetEntity> categoryPetList;
  final List<PetEntity> petList;
  final Function(int) onTapCategoryPet;
  final Function() onTapAddNewPet;

  HomePetSuccessState({
    required this.text,
    required this.micOnPressed,
    required this.categoryPetList,
    required this.petList,
    required this.onTapCategoryPet,
    required this.onTapAddNewPet,
  });

  HomePetSuccessState copyWith({
    String? text,
    Function()? micOnPressed,
    List<CategoryPetEntity>? categoryPetList,
    List<PetEntity>? petList,
    Function(int)? onTapCategoryPet,
    Function()? onTapAddNewPet,
  }) {
    return HomePetSuccessState(
      text: text ?? this.text,
      micOnPressed: micOnPressed ?? this.micOnPressed,
      categoryPetList: categoryPetList ?? this.categoryPetList,
      petList: petList ?? this.petList,
      onTapCategoryPet: onTapCategoryPet ?? this.onTapCategoryPet,
      onTapAddNewPet: onTapAddNewPet ?? this.onTapAddNewPet,
    );
  }
}
