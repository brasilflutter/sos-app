import 'package:flutter/material.dart';

class StatusPetWidget extends StatelessWidget {
  const StatusPetWidget({
    super.key,
    required this.status,
    this.height,
    this.style,
    this.padding,
    this.color,
  });

  final String status;
  final double? height;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(color: color ?? Theme.of(context).colorScheme.primary, borderRadius: BorderRadius.circular(50)),
      child: Center(child: Text(status, style: style ?? Theme.of(context).textTheme.headlineMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary))),
    );
  }
}
