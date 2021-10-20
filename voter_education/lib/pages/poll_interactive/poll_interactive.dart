import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/widgets/drawer.dart';

class PollInteractive extends StatelessWidget {
  static const String title = "DIY Poll Reweighting";
  static const String route = '/poll/diy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(PollInteractive.title)),
      drawer: buildDrawer(context, route),
      body: Text(" DIY screen"),
    );
  }
}
