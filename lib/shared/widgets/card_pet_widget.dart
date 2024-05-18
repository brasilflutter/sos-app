import 'package:design_sos/design_sos.dart';
import 'package:flutter/material.dart';
import 'package:sos/shared/elements/icons_element.dart';
import 'package:sos/shared/widgets/svg_images_widgets.dart';

class CardPetWidget extends StatelessWidget {
  final String name;
  final String color;
  final String sex;
  final String race;
  final String imageUrl;
  final String status;
  final bool isDetectorDevice;
  const CardPetWidget({
    super.key,
    required this.name,
    required this.color,
    required this.sex,
    required this.race,
    required this.imageUrl,
    required this.status,
    required this.isDetectorDevice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      margin: const EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.symmetric(horizontal: Theme.of(context).extension<TokenPadding>()!.horizontalSmallSpacing),
      decoration: BoxDecoration(border: Border.all(color: const Color(0xff8A8A8A).withOpacity(0.8), width: 1), borderRadius: BorderRadius.circular(8), color: Theme.of(context).colorScheme.onPrimary),
      child: InkWell(
        onTap: () {},
        splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
        radius: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: Theme.of(context).extension<TokenPadding>()!.mediumPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name, style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
                        Visibility(visible: isDetectorDevice, child: SvgImagesWidgets(path: IconsElement.union, color: Theme.of(context).colorScheme.primary)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(race, style: Theme.of(context).textTheme.displayMedium),
                            Text(color, style: Theme.of(context).textTheme.displayMedium),
                            Text(sex, style: Theme.of(context).textTheme.displayMedium),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                          decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary, borderRadius: BorderRadius.circular(50)),
                          child: Text(status, style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: Theme.of(context).extension<TokenPadding>()!.horizontalSmallSpacing),
            Container(
              width: 110,
              height: 110,
              margin: Theme.of(context).extension<TokenPadding>()!.mediumPadding,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20), topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Visibility(visible: imageUrl.isEmpty, child: Icon(Icons.pets, size: 50, color: Theme.of(context).colorScheme.primary)),
            ),
          ],
        ),
      ),
    );
  }
}
