import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // onChanged: (value) => onChanged!(value),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(Icons.search, color: Theme.of(context).colorScheme.tertiary),
        suffixIcon: suffixIcon,
        fillColor: Theme.of(context).colorScheme.onPrimary,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide.none,
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
}
