import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? backgroundColor;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;

  final Function()? onTap;
  const ChipWidget({
    super.key,
    required this.text,
    this.onTap,
    this.style,
    this.padding,
    this.backgroundColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        splashColor: Theme.of(context).colorScheme.primary,
        onTap: onTap,
        child: Chip(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: backgroundColor ?? Colors.transparent,
          label: Text(text, style: style ?? Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold)),
          side: BorderSide(color: borderColor ?? Theme.of(context).colorScheme.primary),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }

  factory ChipWidget.categoryPet({required String text, required Function() onTap, required Color backgroundColor, TextStyle? style}) =>
      ChipWidget(text: text, onTap: onTap, backgroundColor: backgroundColor, style: style);

  factory ChipWidget.statusPet({required String text, TextStyle? style, required Color backgroundColor, EdgeInsetsGeometry? padding}) =>
      ChipWidget(text: text, style: style, backgroundColor: backgroundColor, padding: padding);
}
