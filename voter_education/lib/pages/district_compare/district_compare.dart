import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/interfaces/details/district_compare_interface.dart';
import 'package:voter_education/widgets/drawer.dart';

class DistrictCompare extends StatelessWidget {
  static const String title = "Compare the Stats";
  static const String route = '/detail/compare';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as DistrictStatToMap;
    return Scaffold(
      appBar: AppBar(title: Text(DistrictCompare.title)),
      drawer: buildDrawer(context, route),
      body: Text(
          "Compare districts: print arg ${args.districtId}, ${args.statId}"),
    );
  }
}
