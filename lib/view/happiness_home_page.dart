import 'package:flutter/material.dart';
import 'package:happiness_calculator/model/happiness_calculator.dart';
import 'package:happiness_calculator/view/happiness_result.dart';

import '../model/happy_theme.dart';
import '../model/constants.dart';
import '../model/container_color.dart';

class HappinessHomePage extends StatefulWidget {
  const HappinessHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<HappinessHomePage> createState() => _HappinessHomePageState();
}

class _HappinessHomePageState extends State<HappinessHomePage> {
  ContainerColor? selectedContainer;
  int greed = 20;
  int gratitude = 10;
  int diligence = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HappyTheme.shrineBrown900,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: HappyTheme.appbarStyle,
        ),
        backgroundColor: HappyTheme.shrineBrown600,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                expandGender(
                  ContainerColor.first,
                  'Male',
                  Icons.male,
                ),
                expandGender(
                  ContainerColor.second,
                  'Female',
                  Icons.female,
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                color: HappyTheme.shrineBrown600,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 5.0,
                        bottom: 2.0,
                      ),
                      child: Text(
                        'GREED',
                        style: HappyTheme.appbarStyle,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          greed.toString(),
                          style: HappyTheme.greedStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: HappyTheme.shrinePink50,
                        activeTrackColor: HappyTheme.shrineBackgroundWhite,
                        thumbColor: HappyTheme.shrineErrorRed,
                        overlayColor: HappyTheme.shrinePink50,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: 35.0,
                        ),
                      ),
                      child: Slider(
                        value: greed.toDouble(),
                        min: 20.0,
                        max: 100.0,
                        activeColor: activeColor,
                        inactiveColor: Colors.black26,
                        onChanged: (double newValue) {
                          setState(() {
                            greed = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                expandGratitude(),
                expandDilligence(),
              ],
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
            HappinessCalculator happy = HappinessCalculator(
              greed: greed,
              gratitude: gratitude,
              diligence: diligence,
            );
            happy.calculateHappiness();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HappinessResult(
                  greed: greed,
                  gratitude: gratitude,
                  diligence: diligence,
                  happinessIndex: happy.getResult(),
                  whatIsToBeDone: happy.getAdvice(),
                ),
              ),
            );
          },
          child: Text(
            'CALCULATE',
            style: HappyTheme.appbarStyle,
          ),
        ),
      ),
    );
  }

  Expanded expandDilligence() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 100.0,
          color: HappyTheme.inactiveCoor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'DILIGENCE',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  FloatingActionButton(
                    heroTag: 'btn3',
                    onPressed: () {
                      setState(() {
                        diligence--;
                      });
                    },
                    child: const Icon(
                      Icons.minimize,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Text(
                      diligence.toString(),
                      style: HappyTheme.dilligenceStyle,
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: 'btn4',
                    onPressed: () {
                      setState(() {
                        diligence++;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded expandGratitude() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 100.0,
          color: HappyTheme.inactiveCoor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'GRATITUDE',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  FloatingActionButton(
                    heroTag: 'btn1',
                    onPressed: () {
                      setState(() {
                        gratitude--;
                      });
                    },
                    child: const Icon(
                      Icons.minimize,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Text(
                      gratitude.toString(),
                      style: HappyTheme.dilligenceStyle,
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: 'btn2',
                    onPressed: () {
                      setState(() {
                        gratitude++;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded expandGender(
      ContainerColor? containerColor, String gender, IconData genderIcon) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedContainer = containerColor;
            });
          },
          child: Container(
            alignment: Alignment.center,
            color: selectedContainer == containerColor
                ? HappyTheme.activeCoor
                : HappyTheme.inactiveCoor,
            width: double.infinity,
            height: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  genderIcon,
                  size: 80.0,
                  color: Colors.white,
                ),
                Text(
                  gender,
                  style: HappyTheme.genderStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
