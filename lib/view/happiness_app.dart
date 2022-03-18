import 'package:flutter/material.dart';

import 'happiness_home_page.dart';

class HappinessApp extends StatelessWidget {
  const HappinessApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HappinessHomePage(title: 'Flutter Happiness Calculator'),
    );
  }
}
