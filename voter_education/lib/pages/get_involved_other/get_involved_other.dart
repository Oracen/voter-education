import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/widgets/drawer.dart';

class GetInvolvedOther extends StatelessWidget {
  static const String title = "Real Shit";
  static const String route = '/getinvolved/other';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(GetInvolvedOther.title)),
      drawer: buildDrawer(context, route),
      body: Text("Get Involveddd 4 realz"),
    );
  }
}
