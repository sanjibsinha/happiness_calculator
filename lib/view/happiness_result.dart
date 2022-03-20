import 'package:flutter/material.dart';
import 'package:happiness_calculator/model/happy_theme.dart';

class HappinessResult extends StatelessWidget {
  const HappinessResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HappyTheme.shrineBrown900,
      appBar: AppBar(
        backgroundColor: HappyTheme.shrineBrown600,
        title: Text(
          'Know How Happy You Are!',
          style: HappyTheme.appbarStyle,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(5.0),
        child: Text(
          'Result',
          style: HappyTheme.resultStyle,
        ),
      ),
    );
  }
}
