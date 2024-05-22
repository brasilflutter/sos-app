import 'package:design_sos/design_sos.dart';
import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';
import 'package:sos/shared/elements/icons_element.dart';
import 'package:sos/shared/widgets/widgets.dart';

import 'info_pet_success_state.dart';

class InfoPetSuccessView extends SuccessBaseView<InfoPetSuccessState> {
  const InfoPetSuccessView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.onPrimary),
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Visibility(
                          visible: state.petEntity.imageUrl == '' || state.petEntity.imageUrl.isEmpty,
                          replacement: Image.network(state.petEntity.imageUrl, fit: BoxFit.cover),
                          child: Icon(Icons.pets, color: Theme.of(context).colorScheme.primary, size: 100))),
                  Padding(
                      padding: Theme.of(context).extension<TokenPadding>()!.mainPadding,
                      child: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          style: ElevatedButton.styleFrom(fixedSize: const Size(50, 50), backgroundColor: Theme.of(context).primaryColor),
                          icon: const Icon(Icons.arrow_back, color: Colors.white)))
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: Theme.of(context).extension<TokenPadding>()!.mainPadding,
                child: SingleChildScrollView(
                  child: SelectionArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          Text(state.petEntity.name ?? 'Animal sem nome', style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold)),
                          InkWell(
                              onTap: () {},
                              child: StatusPetWidget(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.onPrimary, fontWeight: FontWeight.bold),
                                  status: state.petEntity.status))
                        ]),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalMediumSpacing),
                        Text('Descrição do animal', style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalLargeSpacing),
                        Text('Informações', style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalLargeSpacing),
                        InfoPetTextWidget(title: 'Raça', value: state.petEntity.race),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalSmallSpacing),
                        InfoPetTextWidget(title: 'Cor', value: state.petEntity.color),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalSmallSpacing),
                        InfoPetTextWidget(title: 'Gênero', value: state.petEntity.sex),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalSmallSpacing),
                        InfoPetTextWidget(title: 'Porte', value: state.petEntity.size),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalSmallSpacing),
                        InfoPetTextWidget(title: 'Acessórios', value: state.petEntity.accessories),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalSmallSpacing),
                        InfoPetTextWidget(title: 'Microchip', value: state.petEntity.microchip),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalExtraLargeSpacing),
                        Text('Localização:', style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalLargeSpacing),
                        InfoPetTextWidget(title: 'Abrigo', value: state.petEntity.address?.name),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalSmallSpacing),
                        InfoPetTextWidget(title: 'Endereço', value: state.petEntity.address?.address),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalSmallSpacing),
                        Text('Local que foi encontrado:', style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalSmallSpacing),
                        Text(state.petEntity.locationFound ?? 'Não informada', style: Theme.of(context).textTheme.labelMedium),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () => state.whatsapp(state.petEntity.address?.phone ?? ''),
        child: SvgImagesWidgets(path: IconsElement.whatsapp, color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
