import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget screen;
  final Widget? mediumScreen;
  final Widget? largeScreen;

  const ResponsiveWidget({
    super.key,
    required this.screen,
    this.mediumScreen,
    this.largeScreen,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width > 1000) {
      return largeScreen ?? screen;
    } else if (size.width > 800) {
      return mediumScreen ?? screen;
    } else {
      return screen;
    }
  }
}
