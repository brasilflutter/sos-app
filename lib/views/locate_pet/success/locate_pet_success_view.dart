import 'package:design_sos/design_sos.dart';
import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';
import 'package:sos/shared/elements/images_element.dart';
import 'package:sos/shared/widgets/widgets.dart';

import 'locate_pet_success_state.dart';

class LocatePetSuccessView extends SuccessBaseView<LocatePetSuccessState> {
  const LocatePetSuccessView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: Theme.of(context).extension<TokenPadding>()!.mainPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Localizar pet', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Theme.of(context).colorScheme.onTertiaryContainer, fontWeight: FontWeight.bold)),
                SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalExtraLargeSpacing),
                TextFormFieldWidget.locationPetMicroChip(context: context, controller: state.controllerLocationPetMicroChip, hintText: 'Número do microchip'),
                SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalExtraLargeSpacing),
                Text('Biometria facial', style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalMediumSpacing),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Theme.of(context).colorScheme.onSecondary,
                          backgroundColor: Theme.of(context).colorScheme.onTertiaryContainer,
                          fixedSize: const Size(double.infinity, 70),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImagesElements.imageIcon),
                            const SizedBox(width: 10),
                            Text(state.imageText, style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSecondary)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(children: [
              Expanded(child: ButtomWidgets.locationPetMicroChip(onPressed: () => state.locationPetMicroChip(state.imageText), backgroundColor: Theme.of(context).colorScheme.onTertiaryContainer))
            ]),
          ],
        ),
      ),
    ));
  }
}
