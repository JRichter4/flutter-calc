import 'package:flutter/material.dart';
import 'flutter_key.dart';

class KeyRow extends StatelessWidget {
  const KeyRow(this.keys);

  final List<FlutterKey> keys;

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: keys,
      ),
    );
  }
}
