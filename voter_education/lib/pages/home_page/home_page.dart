import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  static const String title = "Home";
  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(HomePage.title)),
      drawer: buildDrawer(context, route),
      body: Text("Home"),
    );
  }
}
