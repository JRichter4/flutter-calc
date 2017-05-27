import 'package:flutter/material.dart';

class FlutterKey extends StatelessWidget {
  final String text;
  final String type;
  final GestureTapCallback keyTap;
  final Color backgroundColor;

  FlutterKey(
    this.text,
    this.type,
    this.keyTap,
    {this.backgroundColor}
  );

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        decoration: new BoxDecoration(color: backgroundColor),
        child: new InkResponse(
          onTap: keyTap,
          child: new Center(
            child: new Text(
              text,
              style: new TextStyle(fontSize: 24.0),
            ),
          ),
        ),
      ),
    );
  }
}
