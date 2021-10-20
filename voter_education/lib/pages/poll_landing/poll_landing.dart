import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/pages/poll_interactive/poll_interactive.dart';
import 'package:voter_education/widgets/drawer.dart';

void goToPollInteractive(BuildContext context) {
  Navigator.pushReplacementNamed(context, PollInteractive.route);
}

void goToPollEducation(BuildContext context) {
  Navigator.pushReplacementNamed(context, PollInteractive.route);
}

class PollLanding extends StatelessWidget {
  static const String title = "Polls and You";
  static const String route = '/poll';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(PollLanding.title)),
      drawer: buildDrawer(context, route),
      body: Column(
        children: [
          Text(" Polls"),
          ElevatedButton(
            onPressed: () => {goToPollEducation(context)},
            child: Text("I go to PollEducation"),
          ),
          ElevatedButton(
            onPressed: () => {goToPollInteractive(context)},
            child: Text("I go to PollInteractive"),
          ),
        ],
      ),
    );
  }
}
