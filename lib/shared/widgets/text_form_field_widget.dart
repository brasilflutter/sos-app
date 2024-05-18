import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(Icons.search, color: Theme.of(context).colorScheme.tertiary),
        suffixIcon: suffixIcon,
        fillColor: Theme.of(context).colorScheme.onPrimary,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  factory TextFormFieldWidget.searchPet({required BuildContext context, required String hintText, required Function() micOnPressed, TextEditingController? controller}) {
    return TextFormFieldWidget(
      controller: controller,
      hintText: hintText,
      prefixIcon: Icon(Icons.search, color: Theme.of(context).colorScheme.tertiary),
      suffixIcon: IconButton(icon: Icon(Icons.mic, color: Theme.of(context).colorScheme.tertiary), onPressed: micOnPressed),
    );
  }
}
