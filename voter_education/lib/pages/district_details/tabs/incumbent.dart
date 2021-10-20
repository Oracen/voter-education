import 'package:flutter/material.dart';
import 'package:voter_education/interfaces/details/district_compare_interface.dart';
import 'package:voter_education/interfaces/details/district_details_interface.dart';
import 'package:voter_education/pages/district_details/district_details.dart';
import 'package:voter_education/services/district_data/details.dart';

Widget buildIncumbentPage(
  BuildContext context,
  DistrictDetailsModel model,
) {
  DistrictIncumbentDetails person = model.data[0].incumbent;
  return Column(
    children: [
      Text("Name: ${person.name}"),
      Text("Time in office: ${person.timeInOffice}"),
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
