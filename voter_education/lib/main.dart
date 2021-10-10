import 'package:flutter/material.dart';
import 'package:voter_education/pages/region_select/region_select.dart';
import 'package:voter_education/pages/settings_menu/settings_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'An Informed Electorate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegionSelect(),
      routes: <String, WidgetBuilder>{
        RegionSelect.route: (context) => RegionSelect(),
        SettingsMenu.route: (context) => SettingsMenu(),
      },
    );
  }
}
