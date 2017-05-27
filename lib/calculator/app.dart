import 'package:flutter/material.dart';
import 'home.dart';

class FlutterCalc extends StatefulWidget {
  const FlutterCalc({Key key}) : super(key: key);

  @override
  _FlutterCalcState createState() => new _FlutterCalcState();
}

class _FlutterCalcState extends State<FlutterCalc> {
  @override
  Widget build(BuildContext context) {
    Widget home = new CalculatorHome();

    return new MaterialApp(
      title: "Flutter Calc",
      home: home,
    );
  }
}
