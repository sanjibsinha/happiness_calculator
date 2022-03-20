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
          'How Happy You Are!',
          style: HappyTheme.appbarStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Text(
                'Result',
                style: HappyTheme.resultStyle,
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '10',
                    style: HappyTheme.happinessIndexStyle,
                  ),
                  Text(
                    'You are very unhappy. Reduce greed, increase gratitude and dilligence',
                    style: HappyTheme.happinessResultStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 60.0,
        color: HappyTheme.activeCoor,
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'RE-CALCULATE',
            style: HappyTheme.appbarStyle,
          ),
        ),
      ),
    );
  }
}
