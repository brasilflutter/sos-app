import 'package:flutter/material.dart';

class InfoPetTextWidget extends StatelessWidget {
  const InfoPetTextWidget({
    super.key,
    required this.title,
    this.value,
  });

  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$title: ', style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold)),
        Text(value ?? 'Não informada', style: Theme.of(context).textTheme.labelMedium)
      ],
    );
  }
}
