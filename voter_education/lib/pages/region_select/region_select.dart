import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/widgets/drawer.dart';
import 'package:voter_education/widgets/inputs/autocomplete_districts.dart';

class RegionSelect extends StatelessWidget {
  static const String title = "Region Select";
  static const String route = '/region';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(RegionSelect.title)),
      drawer: buildDrawer(context, route),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(child: Text("What are you looking for today?")),
            Center(
                child:
                    Text("Please enter your electoral district or postcode")),
            Padding(
                padding: EdgeInsets.all(20.0), child: AutocompleteDistricts())
          ],
        ),
      ),
    );
  }
}
