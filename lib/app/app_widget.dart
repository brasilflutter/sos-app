import 'package:design_sos/design_sos.dart';
import 'package:flutter/material.dart';
import 'package:framework_sos/flavors_config/flavors_banner.dart';
import 'package:framework_sos/flavors_config/flavors_config.dart';
import 'package:sos/app/app_injection.dart';
import 'package:sos/views/home/home_view_factory.dart';

class AppWidget extends StatelessWidget {
  final ITheme theme;
  const AppWidget({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: MaterialApp(
        debugShowCheckedModeBanner: FlavorConfig.instance.env.enableBanner,
        theme: ThemeManager.createThemeData(theme: theme),
        home: const InjectionPage(child: ExampleHomeViewFactory()),
      ),
    );
  }
}
