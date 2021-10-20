import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/interfaces/details/district_compare_interface.dart';
import 'package:voter_education/pages/district_compare/district_compare.dart';
import 'package:voter_education/pages/district_details/tabs/challengers.dart';
import 'package:voter_education/pages/district_details/tabs/district.dart';
import 'package:voter_education/pages/district_details/tabs/incumbent.dart';
import 'package:voter_education/services/district_data/details.dart';
import 'package:voter_education/widgets/drawer.dart';

void goToDistrictDetails(BuildContext context, DistrictStatToMap args) {
  Navigator.pushReplacementNamed(context, DistrictCompare.route,
      arguments: args);
}

class DistrictDetails extends StatefulWidget {
  final String title = "Region Select";
  static const String route = '/detail';

  @override
  _DistrictDetailState createState() => new _DistrictDetailState();
}

class _DistrictDetailState extends State<DistrictDetails> {
  static const List<Widget> tabs = [
    Text("Electorate"),
    Text("Incumbent"),
    Text("Challengers")
  ];
  bool loading = true;

  @override
  initState() {
    super.initState();

    loading = !Provider.of<DistrictDetailsModel>(context, listen: false)
        .isInitialized();
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return new Scaffold(
          appBar: new AppBar(
            title: new Text("Loading..."),
          ),
          body: Center(
            child: CircularProgressIndicator(),
            heightFactor: 10.0,
          ));
    } else {
      return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: new AppBar(
              title: new Text(widget.title),
              bottom: TabBar(
                tabs: tabs,
              ),
            ),
            drawer: buildDrawer(context, DistrictDetails.route),
            body: new Center(child: Consumer<DistrictDetailsModel>(
              builder: (context, model, child) {
                return TabBarView(children: [
                  buildDistrictPage(context, model),
                  buildIncumbentPage(context, model),
                  buildChallengersPage(context, model)
                ]);
              },
            )),
          ));
    }
  }
}
