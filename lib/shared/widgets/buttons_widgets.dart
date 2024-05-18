import 'package:flutter/material.dart';

class ButtomWidgets extends StatelessWidget {
  final String text;
  final Size? size;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;

  const ButtomWidgets({
    super.key,
    required this.text,
    this.size,
    this.backgroundColor,
    this.padding,
    this.borderRadius,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          fixedSize: size ?? const Size(double.infinity, 50),
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(100),
          ),
        ),
        onPressed: () => onPressed,
        child: Text(text));
  }

  factory ButtomWidgets.addNewPet({void Function()? onPressed}) {
    return ButtomWidgets(text: 'Cadastrar novo animal', size: const Size(double.infinity, 50), onPressed: onPressed);
  }
}
