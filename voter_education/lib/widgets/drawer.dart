import 'package:flutter/material.dart';
import 'package:voter_education/pages/district_select/district_select.dart';
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
          DistrictSelect.route,
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
          DistrictSelect.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Get Involved'),
          DistrictSelect.route,
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
