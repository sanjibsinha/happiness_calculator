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
  int _counter = 0;

  void _changeColor() {}

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
                          _counter++;
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        width: 250.0,
                        height: 250.0,
                        child: const Text('data'),
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
                          _counter++;
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        width: 250.0,
                        height: 250.0,
                        child: const Text('data'),
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
                          _counter++;
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        width: 250.0,
                        height: 250.0,
                        child: const Text('data'),
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
