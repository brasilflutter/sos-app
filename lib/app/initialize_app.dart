import 'dart:convert';

import 'package:design_sos/design_sos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sos/app/app_widget.dart';

enum EnvParams { development, production }

void initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  final String jsonString = await rootBundle.loadString('assets/theme.json');
  final Map<String, dynamic> jsonMap = json.decode(jsonString);
  final theme = ServerDrivenTheme.fromJson(jsonMap);

  runApp(AppWidget(theme: theme));
}
