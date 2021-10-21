import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/interfaces/home/home_page.dart';
import 'package:voter_education/widgets/drawer.dart';

class HomeStory extends StatelessWidget {
  static const String title = "Home";
  static const String route = '/story';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as HomePageStory;
    return Scaffold(
      appBar: AppBar(title: Text(args.title)),
      drawer: buildDrawer(context, route),
      body: Text(args.text),
    );
  }
}
