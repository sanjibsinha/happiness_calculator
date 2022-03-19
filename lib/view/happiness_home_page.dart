import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../model/happ_theme.dart';
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
  int height = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HappyTheme.shrineBrown900,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: HappyTheme.answerStyle,
        ),
        backgroundColor: HappyTheme.shrineBrown600,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                expandEnum(
                  ContainerColor.first,
                  'Male',
                  Icons.male,
                ),
                expandEnum(
                  ContainerColor.second,
                  'Female',
                  Icons.female,
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(15.0),
                alignment: Alignment.center,
                color: HappyTheme.shrineBrown600,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 5.0,
                      ),
                      child: Text(
                        'GREED',
                        style: HappyTheme.answerStyle,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
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
                        value: height.toDouble(),
                        min: 0.0,
                        max: 100.0,
                        activeColor: activeColor,
                        inactiveColor: Colors.black26,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded expandEnum(
      ContainerColor? containerColor, String gender, IconData genderIcon) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
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
            width: 150.0,
            height: 100.0,
            child: Column(
              children: [
                Icon(
                  genderIcon,
                  size: 80.0,
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
