import 'package:flutter/material.dart';
import 'package:calculator/calculator/drawer.dart';
import 'calc_pad.dart';

class CalcDisplay extends StatefulWidget {
  const CalcDisplay({
    Key key,
    this.appBarTitle,
  }) : super(key: key);

  final String appBarTitle;

  @override
  _CalcDisplayState createState() => new _CalcDisplayState();
}

class _CalcDisplayState extends State<CalcDisplay> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.appBarTitle),
      ),
      drawer: new CalculatorDrawer(),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Expanded(
            flex: 1,
            child: new Text("Results Display"),
          ),
          new Divider(height: 1.0),
          new Expanded(
            flex: 1,
            child: new Text("Edit Content Row"),
          ),
          new Expanded(
            flex: 3,
            child: new CalcPad(),
          ),
        ],
      ),
    );
  }
}
