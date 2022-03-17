import 'package:flutter/material.dart';

// this is a new branch enum and color change

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Happiness Calculator'),
    );
  }
}

//TODO: we will use enum in this branch

enum ContainerColor {
  first,
  second,
}

const inactiveColor = Colors.amber;
const activeColor = Colors.red;

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          //_changeColor(ContainerColor.first);
                          selectedContainer = ContainerColor.first;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: selectedContainer == ContainerColor.first
                            ? activeColor
                            : inactiveColor,
                        width: 250.0,
                        height: 250.0,
                        child: const Text('Press Me'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedContainer = ContainerColor.second;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: selectedContainer == ContainerColor.second
                            ? activeColor
                            : inactiveColor,
                        width: 250.0,
                        height: 250.0,
                        child: const Text('Press Me'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
