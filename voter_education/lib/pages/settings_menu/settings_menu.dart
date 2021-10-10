import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/widgets/drawer.dart';

class SettingsMenu extends StatelessWidget {
  static const String title = "Settings";
  static const String route = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(SettingsMenu.title)),
      drawer: buildDrawer(context, route),
      body: Text(" I am the lizard queen too"),
    );
  }
}
