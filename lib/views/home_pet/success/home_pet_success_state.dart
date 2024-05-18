import 'package:framework_sos/framework_sos.dart';
import 'package:sos/core/core.dart';

class HomePetSuccessState extends SuccessBaseState {
  final String text;
  final Function() micOnPressed;
  final List<CategoryPetEntity> categoryPetList;
  final List<PetEntity> petList;
  final Function(int) onTapCategoryPet;

  HomePetSuccessState({
    required this.text,
    required this.micOnPressed,
    required this.categoryPetList,
    required this.petList,
    required this.onTapCategoryPet,
  });

  HomePetSuccessState copyWith({
    String? text,
    Function()? micOnPressed,
    List<CategoryPetEntity>? categoryPetList,
    List<PetEntity>? petList,
    Function(int)? onTapCategoryPet,
  }) {
    return HomePetSuccessState(
      text: text ?? this.text,
      micOnPressed: micOnPressed ?? this.micOnPressed,
      categoryPetList: categoryPetList ?? this.categoryPetList,
      petList: petList ?? this.petList,
      onTapCategoryPet: onTapCategoryPet ?? this.onTapCategoryPet,
    );
  }
}
