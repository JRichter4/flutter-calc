import 'package:flutter/material.dart';
import 'key_row.dart';
import 'flutter_key.dart';

class CalcPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Expanded(
          flex: 3,
          child: new Column(
            children: <Widget>[
              new KeyRow(<FlutterKey>[
                new FlutterKey("7", "Number", null),
                new FlutterKey("8", "Number", null),
                new FlutterKey("9", "Number", null),
              ]),
              new KeyRow(<FlutterKey>[
                new FlutterKey("4", "Number", null),
                new FlutterKey("5", "Number", null),
                new FlutterKey("6", "Number", null),
              ]),
              new KeyRow(<FlutterKey>[
                new FlutterKey("1", "Number", null),
                new FlutterKey("2", "Number", null),
                new FlutterKey("3", "Number", null),
              ]),
              new KeyRow(<FlutterKey>[
                new FlutterKey(".", "Operator", null),
                new FlutterKey("0", "Number", null),
                new FlutterKey("=", "Operator", null,
                    backgroundColor: Colors.greenAccent),
              ]),
            ],
          ),
        ),
        new Expanded(
          child: new Container(
//            decoration: new BoxDecoration(color: Colors.greenAccent),
            child: new Column(
              children: <Widget>[
                new FlutterKey("\u{00F7}", "Operator", null),
                new FlutterKey("\u{00D7}", "Operator", null),
                new FlutterKey("\u{002D}", "Operator", null),
                new FlutterKey("\u{002B}", "Operator", null),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
