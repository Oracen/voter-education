import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/widgets/drawer.dart';

class GetInvolved extends StatelessWidget {
  static const String title = "Get Involved";
  static const String route = '/getinvolved';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(GetInvolved.title)),
      drawer: buildDrawer(context, route),
      body: Text("Get Involveddd"),
    );
  }
}
