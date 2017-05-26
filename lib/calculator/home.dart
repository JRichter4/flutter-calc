import 'package:flutter/material.dart';
import 'drawer.dart';

class CalculatorHome extends StatefulWidget {
  const CalculatorHome({Key key}) : super(key: key);

  @override
  _CalculatorHomeState createState() => new _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Calculator")
      ),
      drawer: new CalculatorDrawer(),
      body: new Center(
        child: new Text("Flutter Calculator Main Page")
      ),
    );
  }
}
