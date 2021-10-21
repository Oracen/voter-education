import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/interfaces/get_involved/get_involved.dart';
import 'package:voter_education/widgets/drawer.dart';

class GetInvolvedMajor extends StatelessWidget {
  static const String title = "I Sleep";
  static const String route = '/getinvolved/major';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PartyChoice;

    String party;
    if (args.id == 0) {
      party = "Liberal";
    } else {
      party = "Labor";
    }

    return Scaffold(
      appBar: AppBar(title: Text(GetInvolvedMajor.title)),
      drawer: buildDrawer(context, route),
      body: Text("Your choice leads you to the same place, $party man"),
    );
  }
}
