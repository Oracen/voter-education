import 'package:flutter/material.dart';
import 'package:voter_education/interfaces/details/district_compare_interface.dart';
import 'package:voter_education/interfaces/details/district_details_interface.dart';
import 'package:voter_education/enums/party_enum.dart';
import 'package:voter_education/pages/district_details/district_details.dart';
import 'package:voter_education/services/district_data/details.dart';

Widget buildDistrictPage(
  BuildContext context,
  DistrictDetailsModel model,
) {
  DistrictSummary district = model.data[0].summary;
  DistrictPartyDetails party = model.data[0].party;
  return Column(
    children: [
      Text("Area: ${district.name}"),
      Text("Controlling party: ${PartyNameLookup[party.id]}"),
      Text("Local Members: ${party.members}"),
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
