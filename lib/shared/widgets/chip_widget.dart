import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Function()? onTap;
  const ChipWidget({
    super.key,
    required this.text,
    this.onTap,
    this.style,
    this.padding,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide(color: Theme.of(context).colorScheme.primary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: backgroundColor ?? Colors.transparent,
      label: InkWell(
        borderRadius: BorderRadius.circular(50),
        splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        onTap: onTap,
        child: Text(text, style: style ?? Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold)),
      ),
    );
  }

  factory ChipWidget.categoryPet({required String text, required Function() onTap}) => ChipWidget(text: text, onTap: onTap);

  factory ChipWidget.statusPet({required String text, TextStyle? style, required Color backgroundColor, EdgeInsetsGeometry? padding}) =>
      ChipWidget(text: text, style: style, backgroundColor: backgroundColor, padding: padding);
}
