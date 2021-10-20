import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/widgets/drawer.dart';

class PollEducation extends StatelessWidget {
  static const String title = "How polling works";
  static const String route = '/poll/info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(PollEducation.title)),
      drawer: buildDrawer(context, route),
      body: Text(" Polls for the masses"),
    );
  }
}
