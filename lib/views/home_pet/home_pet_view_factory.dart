import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';
import 'package:sos/core/core.dart';
import 'package:sos/shared/navigator/navigator_controller.dart';

import 'home_pet_states.dart';
import 'home_pet_views.dart';

class HomePetViewFactory {
  static LoadingBaseView<HomePetLoadingState> loading(HomePetLoadingState state) => HomePetLoadingView(state: state);

  static SuccessBaseView<HomePetSuccessState> success(HomePetSuccessState state) => HomePetSuccessView(state: state);

  static ErrorBaseView<HomePetErrorState> error(HomePetErrorState state) => HomePetErrorView(state: state);
}

class ExampleHomePetViewFactory extends StatefulWidget {
  const ExampleHomePetViewFactory({super.key});

  @override
  State<ExampleHomePetViewFactory> createState() => _ExampleHomePetViewFactoryState();
}

class _ExampleHomePetViewFactoryState extends State<ExampleHomePetViewFactory> {
  int indexCategory = 0;

  @override
  Widget build(BuildContext context) {
    final NavigatorController navigatorController = NavigatorControllerImpl(context);
    return HomePetViewFactory.success(HomePetSuccessState(
      toNavigatePetInfo: (id) {
        navigatorController.navigateToInfoPet(id);
      },
      seachPetController: TextEditingController(),
      onTapSearchPet: (value) {
        print('Search pet tapped');
      },
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
          id: '1',
          name: 'FLOR',
          color: 'Bege',
          sex: 'Man',
          status: 'Desaparecido',
          isDetectorDevice: false,
          race: "PUGG",
          imageUrl: 'https://i0.statig.com.br/bancodeimagens/78/pt/gs/78ptgsfeddfh638dkkzya5p3y.jpg',
          accessories: 'Coleira',
          microchip: '123456789',
          size: 'Pequeno',
          address: ArigoAddressEntity(
            address: 'Rua 1',
            city: 'Cidade 1',
            state: 'Estado 1',
            country: 'País 1',
            postalCode: '123456',
            phone: '123456789',
            email: '',
          ),
        ),
      ],
      indexCategory: indexCategory,
      onTapCategoryPet: (index) {
        setState(() {
          indexCategory = index;
          print('Category pet tapped');
        });
      },
      onTapAddNewPet: () {
        print('Add new pet tapped');
      },
    ));
  }
}
