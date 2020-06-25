import 'dart:math';

import 'package:flutter/material.dart';
import 'package:string_to_hex/string_to_hex.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 5;
  String _string = 'your nice string';
  String hexColor = 'The Hex String comes here';
  Color generatedColor;
  int generatedColorInt;

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
            MaterialButton(
              child: Text('press to generate Color & HexString'),
              color: Color(generatedColorInt ?? 0xfff5f535),
              onPressed: () {
                setState(() {
                  hexColor = getRandomString(_counter);
                  _string = StringToHex().toHexString(_string);
                  generatedColor = Color(StringToHex().toColor(_string));
                  generatedColorInt = StringToHex().toColor(_string);
                });
              },
            ),
            Text(
              '$_string',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$hexColor',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) {
  return String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}
