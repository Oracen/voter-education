import 'package:flutter/material.dart';
import 'package:voter_education/interfaces/details/district_compare_interface.dart';
import 'package:voter_education/pages/district_details/district_details.dart';
import 'package:voter_education/services/district_data/details.dart';

Widget buildChallengersPage(
  BuildContext context,
  DistrictDetailsModel model,
) {
  return Column(
    children: [
      Text("TODO: Add a list constructor"),
      ElevatedButton(
        onPressed: () => {
          goToDistrictDetails(
              context, DistrictStatToMap(districtId: 0, statId: 0))
        },
        child: Text("I go to 0, 0"),
      )
    ],
  );
}
