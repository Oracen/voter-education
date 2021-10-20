import 'package:flutter/material.dart';
import 'package:voter_education/pages/district_select/district_select.dart';
import 'package:voter_education/pages/get_involved/get_involved.dart';
import 'package:voter_education/pages/home_page/home_page.dart';
import 'package:voter_education/pages/poll_landing/poll_landing.dart';
import 'package:voter_education/pages/settings_menu/settings_menu.dart';

Widget _buildMenuItem(
    BuildContext context, Widget title, String routeName, String currentRoute) {
  var isSelected = routeName == currentRoute;

  return ListTile(
    title: title,
    selected: isSelected,
    onTap: () {
      if (isSelected) {
        Navigator.pop(context);
      } else {
        Navigator.pushReplacementNamed(context, routeName);
      }
    },
  );
}

Drawer buildDrawer(BuildContext context, String currentRoute) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        const DrawerHeader(
          child: Center(
            child: Text('Main Menu'),
          ),
        ),
        _buildMenuItem(
          context,
          const Text('Home'),
          HomePage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('My Voting Area'),
          DistrictSelect.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Polling Tool'),
          PollLanding.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Get Involved'),
          GetInvolved.route,
          currentRoute,
        ),
        SizedBox(height: 20),
        _buildMenuItem(
          context,
          const Text('Settings'),
          SettingsMenu.route,
          currentRoute,
        ),
        SizedBox(height: 20),
      ],
    ),
  );
}
