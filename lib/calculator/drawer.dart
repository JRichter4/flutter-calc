import 'package:flutter/material.dart';

class CalculatorDrawerHeader extends StatefulWidget {
  const CalculatorDrawerHeader({Key key}) : super(key: key);

  @override
  _CalculatorDrawerHeaderState createState() => new _CalculatorDrawerHeaderState();
}

class _CalculatorDrawerHeaderState extends State<CalculatorDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    final double systemTopPadding = MediaQuery.of(context).padding.top;

    return new DrawerHeader(
      child: new Text("Header"),
    );
  }
}

class CalculatorDrawer extends StatelessWidget {
  CalculatorDrawer({Key key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> drawerItems = <Widget>[
      new CalculatorDrawerHeader(),
      new Text("First Item"),
    ];

    return new Drawer(child: new ListView(primary: false, children: drawerItems));
  }
}
