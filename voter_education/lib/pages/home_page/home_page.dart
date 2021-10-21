import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voter_education/interfaces/home/home_page.dart';
import 'package:voter_education/pages/home_story/home_story.dart';
import 'package:voter_education/widgets/drawer.dart';

void goToStory(BuildContext context, HomePageStory args) {
  Navigator.pushReplacementNamed(context, HomeStory.route, arguments: args);
}

class HomePage extends StatelessWidget {
  static const String title = "Home";
  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(HomePage.title)),
      drawer: buildDrawer(context, route),
      body: Column(
        children: [
          Text("Home"),
          ElevatedButton(
              onPressed: () => {
                    goToStory(
                        context,
                        HomePageStory(
                            id: 0,
                            title: "I'm a little title",
                            text: "short and stout"))
                  },
              child: Text("The real story is here"))
        ],
      ),
    );
  }
}
