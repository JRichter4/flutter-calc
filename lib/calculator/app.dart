import 'package:flutter/material.dart';
import 'home.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key key}) : super(key: key);

  @override
  _CalculatorState createState() => new _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    Widget home = new CalculatorHome();

    return new MaterialApp(
      title: "Flutter Calculator",
      home: home,
    );
  }
}
