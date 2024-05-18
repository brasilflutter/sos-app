import 'package:design_sos/design_sos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sos/views/home_pet/home_pet_view_factory.dart';

class AppWidget extends StatelessWidget {
  final ITheme theme;
  const AppWidget({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    final fontFamily = GoogleFonts.montserrat().fontFamily;
    return MaterialApp(
      title: 'SOS',
      // debugShowCheckedModeBanner: FlavorConfig.instance.env.enableBanner,
      theme: ThemeManager.createThemeData(theme: theme, fontFamily: fontFamily),
      home: const ExampleHomePetViewFactory(),
    );
  }
}
