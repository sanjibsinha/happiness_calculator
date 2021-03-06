import 'package:flutter/material.dart';
import 'package:happiness_calculator/model/happy_theme.dart';

class HappinessResult extends StatelessWidget {
  const HappinessResult({
    Key? key,
    required this.greed,
    required this.gratitude,
    required this.diligence,
    required this.happinessIndex,
    required this.whatIsToBeDone,
  }) : super(key: key);
  final int greed;
  final int gratitude;
  final int diligence;

  final String happinessIndex;
  final String whatIsToBeDone;

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
              margin: const EdgeInsets.all(15.0),
              child: Text(
                'Result: Your Greed is: $greed, '
                'your Gratitude is: $gratitude '
                'your Diligence is: $diligence.',
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
                    happinessIndex,
                    style: HappyTheme.happinessIndexStyle,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    whatIsToBeDone,
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
