import 'package:flutter/material.dart';
import 'package:calculator/tools/link_text_span.dart';

class CalculatorDrawerHeader extends StatefulWidget {
  const CalculatorDrawerHeader({Key key}) : super(key: key);

  @override
  _CalculatorDrawerHeaderState createState() => new _CalculatorDrawerHeaderState();
}

class _CalculatorDrawerHeaderState extends State<CalculatorDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    //final double systemTopPadding = MediaQuery.of(context).padding.top;

    return new DrawerHeader(
      child: new Text("Header"),
    );
  }
}

class CalculatorDrawer extends StatelessWidget {
  CalculatorDrawer({Key key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final TextStyle aboutTextStyle = themeData.textTheme.body2;
    final TextStyle linkStyle =
      themeData.textTheme.body2.copyWith(color: themeData.accentColor);

    final Widget aboutItem = new AboutListTile(
      icon: new Icon(Icons.help_outline),
      applicationVersion: 'Alpha Pre-Release',
      applicationIcon: new Icon(Icons.iso),
      applicationLegalese: '© Joe Richter Development 2017',
      aboutBoxChildren: <Widget>[
        new Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: new RichText(
            text: new TextSpan(children: <TextSpan>[
              new TextSpan(
                style: aboutTextStyle,
                text: "Flutter Calculator is a fully customizable calculator "
                    "that allows the user to completely control the layout and "
                    " configure the buttons. This calculator is built on the "
                    "Flutter Framework which is developed by Google in the Dart "
                    "language.\n\nTo see the source code for this app, which is "
                    "currently open source, visit our ",
              ),
              new LinkTextSpan(
                style: linkStyle,
                url: "https://github.com/JRichter4/flutter-calc",
                text: "GitHub page",
              ),
            ]),
          ),
        ),
      ],
    );

    final List<Widget> drawerItems = <Widget>[
      new CalculatorDrawerHeader(),
      new ListTile(
        leading: new Icon(Icons.settings),
        title: new Text("Settings"),
      ),
      new Divider(),
      aboutItem,
    ];

    return new Drawer(
      child: new ListView(
        primary: false,
        children: drawerItems,
      ),
    );
  }
}
