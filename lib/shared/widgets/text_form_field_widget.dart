import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final TextInputType? keyboardType;
  final BorderSide? borderSide;
  final Function(String)? onChanged;
  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.keyboardType,
    this.borderSide,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // onChanged: (value) => onChanged!(value),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        label: Text(hintText),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? Theme.of(context).colorScheme.onPrimary,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: borderSide ?? BorderSide(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
    );
  }

  factory TextFormFieldWidget.searchPet({
    required BuildContext context,
    required String hintText,
    required Function() micOnPressed,
    TextEditingController? controller,
    Function()? seachOnPressed,
  }) {
    return TextFormFieldWidget(
      controller: controller,
      hintText: hintText,
      prefixIcon: IconButton(icon: Icon(Icons.search, color: Theme.of(context).colorScheme.tertiary), onPressed: seachOnPressed),
      suffixIcon: IconButton(icon: Icon(Icons.mic, color: Theme.of(context).colorScheme.tertiary), onPressed: micOnPressed),
    );
  }

  factory TextFormFieldWidget.locationPetMicroChip({required BuildContext context, required String hintText, TextEditingController? controller}) {
    return TextFormFieldWidget(keyboardType: TextInputType.number, controller: controller, hintText: hintText, fillColor: Theme.of(context).colorScheme.surface);
  }
}
