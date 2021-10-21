import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/interfaces/get_involved/get_involved.dart';
import 'package:voter_education/pages/get_involved_other/get_involved_other.dart';
import 'package:voter_education/pages/get_involved_major/get_involved_major.dart';
import 'package:voter_education/widgets/drawer.dart';

void goToMajor(BuildContext context, PartyChoice args) {
  Navigator.pushReplacementNamed(context, GetInvolvedMajor.route,
      arguments: args);
}

void goToOther(BuildContext context, PartyChoice args) {
  Navigator.pushReplacementNamed(context, GetInvolvedOther.route,
      arguments: args);
}

class GetInvolved extends StatelessWidget {
  static const String title = "Get Involved";
  static const String route = '/getinvolved';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(GetInvolved.title)),
        drawer: buildDrawer(context, route),
        body: Column(
          children: [
            Text("Get Involveddd"),
            ElevatedButton(
                onPressed: () => {goToMajor(context, PartyChoice(id: 1))},
                child: Text("Labor")),
            ElevatedButton(
                onPressed: () => {goToMajor(context, PartyChoice(id: 0))},
                child: Text("Liberal")),
            ElevatedButton(
                onPressed: () => {goToMajor(context, PartyChoice(id: 2))},
                child: Text("The Dark Side"))
          ],
        ));
  }
}
