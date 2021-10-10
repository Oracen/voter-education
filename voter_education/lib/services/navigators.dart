import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:voter_education/interfaces/regions/district_interface.dart';
import 'package:voter_education/pages/district_details/district_details.dart';
import 'package:voter_education/services/district_data/details.dart';

void loadDistrictDetails(BuildContext context, DistrictInterface district) {
  Provider.of<DistrictDetailsModel>(context, listen: false)
      .getDistrict(district.id);
  Navigator.pushNamed(context, DistrictDetails.route, arguments: district);
}
