import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkTextSpan extends TextSpan {
  LinkTextSpan({
    TextStyle style,
    String url,
    String text,
  }) : super (
    style: style,
    text: text ?? url,
    recognizer: new TapGestureRecognizer()..onTap = () { launch(url); }
  );
}
