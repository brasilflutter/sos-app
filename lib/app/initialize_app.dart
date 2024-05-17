import 'package:flutter/material.dart';
import 'package:sos/app/app_widget.dart';

enum EnvParams { development, production }

void initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  // final String jsonString = await rootBundle.loadString('assets/theme.json');
  // final Map<String, dynamic> jsonMap = json.decode(jsonString);
  // final theme = ServerDrivenTheme.fromJson({});

  runApp(const AppWidget());
}
