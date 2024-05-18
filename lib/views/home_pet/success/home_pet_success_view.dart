import 'package:flutter/material.dart';
import 'package:framework_sos/framework_sos.dart';
import 'package:sos/shared/widgets/widgets.dart';

import 'home_pet_success_state.dart';

class HomePetSuccessView extends SuccessBaseView<HomePetSuccessState> {
  const HomePetSuccessView({super.key, required super.state});

  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormFieldWidget.searchPet(hintText: state.text, context: context, micOnPressed: () => state.micOnPressed()),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.categoryPetList.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ChipWidget.categoryPet(
                          text: state.categoryPetList[index].name,
                          onTap: () => state.onTapCategoryPet(index),
                        ));
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.petList.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return CardPetWidget(
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
              Row(children: [Expanded(child: ButtomWidgets.addNewPet(onPressed: () => state.onTapAddNewPet()))]),
            ],
          ),
        ),
      ),
    );
  }
}
