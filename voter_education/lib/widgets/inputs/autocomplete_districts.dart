import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voter_education/interfaces/regions/base.dart';
import 'package:voter_education/services/main_data/district_loader.dart';
import 'package:voter_education/utils/string_parsing.dart';

class AutocompleteDistricts extends StatelessWidget {
  AutocompleteDistricts({Key? key}) : super(key: key);
  DistrictLoader districts = new DistrictLoader();

  static String _displayStringForOption(District option) {
    return '${option.name}     -     ${option.postcode} (${option.region})';
  }

  @override
  Widget build(BuildContext context) {
    districts.load();
    return Autocomplete<District>(
      displayStringForOption: _displayStringForOption,
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<District>.empty();
        }
        if (stringIsNumeric(textEditingValue.text)) {
          return districts.data.where((District option) {
            return option.postcode
                .toString()
                .contains(textEditingValue.text.toLowerCase());
          });
        } else {
          return districts.data.where((District option) {
            return option.name
                .toString()
                .toLowerCase()
                .contains(textEditingValue.text.toLowerCase());
          });
        }
      },
      onSelected: (District selection) {
        // TODO: Pass vals into routes
        print('You just selected ${_displayStringForOption(selection)}');
      },
    );
  }
}
