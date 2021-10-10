import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:voter_education/interfaces/regions/base.dart';

class DistrictLoader {
  List<District> data = [];
  Future load() async {
    try {
      data = [];
      String jsonString =
          await rootBundle.loadString('assets/dummy_data/districts.json');
      Map parsedJson = json.decode(jsonString);
      var categoryJson = parsedJson['districts'] as List;
      for (int i = 0; i < categoryJson.length; i++) {
        data.add(new District.fromJson(categoryJson[i]));
      }
    } catch (e) {
      print(e);
    }
  }
}
