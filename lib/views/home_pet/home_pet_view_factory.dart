import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';
import 'package:sos/core/core.dart';

import 'home_pet_states.dart';
import 'home_pet_views.dart';

class HomePetViewFactory {
  static LoadingBaseView<HomePetLoadingState> loading(HomePetLoadingState state) => HomePetLoadingView(state: state);

  static SuccessBaseView<HomePetSuccessState> success(HomePetSuccessState state) => HomePetSuccessView(state: state);

  static ErrorBaseView<HomePetErrorState> error(HomePetErrorState state) => HomePetErrorView(state: state);
}

class ExampleHomePetViewFactory extends StatelessWidget {
  const ExampleHomePetViewFactory({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePetViewFactory.success(HomePetSuccessState(
      text: 'Success text',
      micOnPressed: () {},
      categoryPetList: [
        CategoryPetEntity(name: 'Category 1', id: '1'),
        CategoryPetEntity(name: 'Category 2', id: '2'),
        CategoryPetEntity(name: 'Category 3', id: '3'),
        CategoryPetEntity(name: 'Category 3', id: '3'),
        CategoryPetEntity(name: 'Category 3', id: '3'),
        CategoryPetEntity(name: 'Category 3', id: '3'),
        CategoryPetEntity(name: 'Category 3', id: '3'),
        CategoryPetEntity(name: 'Category 3', id: '3'),
        CategoryPetEntity(name: 'Category 3', id: '3'),
      ],
      petList: [
        PetEntity(
          name: 'FLOR',
          color: 'Bege',
          sex: 'Man',
          status: 'Desaparecido',
          isDetectorDevice: false,
          race: "PUGG",
          imageUrl: 'https://www.petz.com.br/blog/wp-content/uploads/2019/03/cachorro-mini-pet.jpg',
        ),
        PetEntity(
          name: 'FLOR',
          color: 'Color 1',
          sex: 'Man',
          status: 'Desaparecido',
          isDetectorDevice: true,
          race: "PUGG",
          imageUrl: '',
        ),
      ],
      onTapCategoryPet: (index) {
        print('Category tapped: $index');
      },
      onTapAddNewPet: () {
        print('Add new pet tapped');
      },
    ));
  }
}
