import 'package:flutter/material.dart';
import 'package:sos/views/home/home_view_factory.dart';

class AppWidget extends StatelessWidget {
  // final ITheme theme;
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOS',
      theme: ThemeData(primarySwatch: Colors.blue),
      // debugShowCheckedModeBanner: FlavorConfig.instance.env.enableBanner,
      // theme: ThemeManager.createThemeData(theme: theme),
      home: const ExampleHomeViewFactory(),
    );
  }
}
