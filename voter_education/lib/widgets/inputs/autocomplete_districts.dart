import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voter_education/interfaces/regions/district_interface.dart';
import 'package:voter_education/services/main_data/district_loader.dart';
import 'package:voter_education/services/navigators.dart';
import 'package:voter_education/utils/string_parsing.dart';

class AutocompleteDistricts extends StatelessWidget {
  AutocompleteDistricts({Key? key}) : super(key: key);
  final DistrictLoader districts = new DistrictLoader();

  static String _displayStringForOption(DistrictInterface option) {
    return '${option.name}     -     ${option.postcode} (${option.region})';
  }

  @override
  Widget build(BuildContext context) {
    districts.load();
    return Autocomplete<DistrictInterface>(
      displayStringForOption: _displayStringForOption,
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<DistrictInterface>.empty();
        }
        if (stringIsNumeric(textEditingValue.text)) {
          return districts.data.where((DistrictInterface option) {
            return option.postcode
                .toString()
                .contains(textEditingValue.text.toLowerCase());
          });
        } else {
          return districts.data.where((DistrictInterface option) {
            return option.name
                .toString()
                .toLowerCase()
                .contains(textEditingValue.text.toLowerCase());
          });
        }
      },
      onSelected: (DistrictInterface selection) {
        loadDistrictDetails(context, selection);
      },
    );
  }
}
