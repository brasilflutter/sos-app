import 'package:flutter/material.dart';
import 'package:sos/injections/injector.dart';

class InjectionPage extends StatefulWidget {
  final Widget child;
  const InjectionPage({super.key, required this.child});

  @override
  State<InjectionPage> createState() => _InjectionPageState();
}

class _InjectionPageState extends State<InjectionPage> {
  @override
  void initState() {
    Injector.setupDependencies(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
