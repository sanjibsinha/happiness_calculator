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
            width: 250.0,
            height: 250.0,
            child: const Text('Press Me'),
          ),
        ),
      ),
    );
  }
}
