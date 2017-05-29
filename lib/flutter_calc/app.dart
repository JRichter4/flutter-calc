import 'package:flutter/material.dart';
import 'home.dart';

class FlutterCalc extends StatefulWidget {
  FlutterCalc({Key key}) : super(key: key);

  @override
  _FlutterCalc createState() => new _FlutterCalc();
}

class _FlutterCalc extends State<FlutterCalc> {
  @override
  Widget build(BuildContext context) {
    Widget home = new FlutterCalcHome();

    return new MaterialApp(
      title: "Flutter Calculator",
      home: home,
    );
  }
}
