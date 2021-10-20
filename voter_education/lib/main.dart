import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:voter_education/pages/district_compare/district_compare.dart';
import 'package:voter_education/pages/district_details/district_details.dart';

import 'package:voter_education/pages/district_select/district_select.dart';
import 'package:voter_education/pages/get_involved/get_involved.dart';
import 'package:voter_education/pages/home_page/home_page.dart';
import 'package:voter_education/pages/poll_landing/poll_landing.dart';
import 'package:voter_education/pages/settings_menu/settings_menu.dart';
import 'package:voter_education/services/district_data/details.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DistrictDetailsModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'An Informed Electorate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        HomePage.route: (context) => HomePage(),
        DistrictSelect.route: (context) => DistrictSelect(),
        SettingsMenu.route: (context) => SettingsMenu(),
        DistrictDetails.route: (context) => DistrictDetails(),
        PollLanding.route: (context) => PollLanding(),
        GetInvolved.route: (context) => GetInvolved(),
        DistrictCompare.route: (context) => DistrictCompare()
      },
    );
  }
}
