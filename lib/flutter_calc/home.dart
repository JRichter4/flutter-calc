import 'package:flutter/material.dart';
import 'drawer.dart';

class FlutterCalcHome extends StatefulWidget {
  FlutterCalcHome({Key key}) : super(key: key);

  @override
  _FlutterCalcHome createState() => new _FlutterCalcHome();
}

class _FlutterCalcHome extends State<FlutterCalcHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Calculator")
      ),
      drawer: new FlutterCalcDrawer(),
      body: new Center(
        child: new Text("Flutter Calculator Main Page")
      ),
    );
  }
}
