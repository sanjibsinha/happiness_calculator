import 'package:flutter/material.dart';
import 'package:happiness_calculator/model/happ_theme.dart';

import 'happiness_home_page.dart';

HappyTheme happyTheme = HappyTheme();

class HappinessApp extends StatelessWidget {
  const HappinessApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: happyTheme.buildTheme(),
      home: const HappinessHomePage(title: 'Flutter Happiness Calculator'),
    );
  }
}
