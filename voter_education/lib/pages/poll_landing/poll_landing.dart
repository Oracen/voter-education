import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/widgets/drawer.dart';

class PollLanding extends StatelessWidget {
  static const String title = "Polls and You";
  static const String route = '/poll';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(PollLanding.title)),
      drawer: buildDrawer(context, route),
      body: Text(" Polls"),
    );
  }
}
