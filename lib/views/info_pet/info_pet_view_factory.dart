import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';
import 'package:sos/core/core.dart';

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
    return InfoPetViewFactory.success(InfoPetSuccessState(
      petEntity: PetEntity(
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
          city: 'São Paulo',
          state: 'SP',
          address: 'Rua Vergueiro',
          country: 'Brasil',
          email: '',
          name: 'Arigo',
          phone: '11999999999',
          postalCode: '12345678',
        ),
      ),
      whatsapp: (String number) {
        print('Whatsapp: $number');
      },
    ));
  }
}
