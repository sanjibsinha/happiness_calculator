import 'package:flutter/material.dart';

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
  int height = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                expandEnum(ContainerColor.first),
                expandEnum(ContainerColor.second),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(15.0),
                alignment: Alignment.center,
                color: inactiveColor,
                width: double.infinity,
                child: Column(
                  children: [
                    const Text('How The Slider Widget Works'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: const TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w100,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: activeColor,
                      inactiveColor: Colors.black26,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Expanded expandEnum(ContainerColor? containerColor) {
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
                ? activeColor
                : inactiveColor,
            width: 150.0,
            height: 150.0,
            child: const Text('Press Me'),
          ),
        ),
      ),
    );
  }
}
