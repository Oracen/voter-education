import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voter_education/interfaces/details/district_details_interface.dart';

class DistrictDetailsModel extends ChangeNotifier {
  List<DistrictDetailsInterface> data =
      []; // init to list to allow lazy loading
  bool _initialized = false;

  bool isInitialized() {
    // Private method
    checkInitialized();
    return _initialized;
  }

  void checkInitialized() {
    if (data.length > 1) {
      // Adding this check in so I can spot logic errors early
      throw RangeError(
          "Data size was larger than that allowed by the data model");
    }
    _initialized = data.length == 1;
  }

  Future<void> getDistrict(String districtId) async {
    //TODO: Add proper async API call here, have the notify in that

    final String response = await rootBundle
        .loadString('assets/dummy_data/district_details/$districtId.json');
    final Map<String, dynamic> _data = json.decode(response);

    data = [];
    data.add(DistrictDetailsInterface.fromJson(_data));
    checkInitialized();
    notifyListeners();
  }
}
