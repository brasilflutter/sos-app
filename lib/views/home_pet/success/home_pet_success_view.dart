import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';
import 'package:sos/shared/elements/images_element.dart';
import 'package:sos/shared/widgets/widgets.dart';

import 'home_pet_success_state.dart';

class HomePetSuccessView extends SuccessBaseView<HomePetSuccessState> {
  const HomePetSuccessView({super.key, required super.state});
  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SafeArea(
                child: TextFormFieldWidget.searchPet(
              hintText: state.text,
              context: context,
              micOnPressed: () => state.micOnPressed(),
              controller: state.seachPetController,
            )),
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.categoryPetList.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ChipWidget.categoryPet(
                      text: state.categoryPetList[index].name,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: index == state.indexCategory ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),
                      backgroundColor: index == state.indexCategory ? Theme.of(context).colorScheme.primary : Colors.transparent,
                      onTap: () => state.onTapCategoryPet(index),
                    ),
                  );
                },
              ),
            ),
            if (state.petList.isNotEmpty) ...[
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.petList.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return CardPetWidget(
                      onTap: () => state.toNavigatePetInfo(state.petList[index].id),
                      name: state.petList[index].name,
                      color: state.petList[index].color,
                      race: state.petList[index].race,
                      sex: state.petList[index].sex,
                      imageUrl: state.petList[index].imageUrl,
                      status: state.petList[index].status,
                      isDetectorDevice: state.petList[index].isDetectorDevice,
                    );
                  },
                ),
              ),
            ],
            if (state.petList.isEmpty) ...[
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImagesElements.notFound, width: 200, fit: BoxFit.cover),
                      const Center(
                        child: Text('Nenhum pet cadastrado'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            Row(children: [Expanded(child: ButtomWidgets.addNewPet(onPressed: () => state.onTapAddNewPet()))]),
          ],
        ),
      ),
    );
  }
}
