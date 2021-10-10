import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:voter_education/interfaces/regions/district_interface.dart';

class DistrictLoader {
  List<DistrictInterface> data = [];
  Future load() async {
    try {
      data = [];
      String jsonString =
          await rootBundle.loadString('assets/dummy_data/districts_list.json');
      Map parsedJson = json.decode(jsonString);
      var categoryJson = parsedJson['districts'] as List;
      for (int i = 0; i < categoryJson.length; i++) {
        data.add(new DistrictInterface.fromJson(categoryJson[i]));
      }
    } catch (e) {
      print(e);
    }
  }
}
