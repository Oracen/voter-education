import 'package:json_annotation/json_annotation.dart';

part 'district_details_interface.g.dart';

@JsonSerializable(explicitToJson: true)
class Challenger {
  final String id;
  final String name;
  final int age;

  Challenger({required this.id, required this.name, required this.age});

  // JSON serialization helpers
  factory Challenger.fromJson(Map<String, dynamic> json) =>
      _$ChallengerFromJson(json);

  Map<String, dynamic> toJson() => _$ChallengerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DistrictPartyDetails {
  final String id;
  final int members;

  DistrictPartyDetails({required this.id, required this.members});

  // JSON serialization helpers
  factory DistrictPartyDetails.fromJson(Map<String, dynamic> json) =>
      _$DistrictPartyDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictPartyDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DistrictIncumbentDetails {
  final String id;
  final String name;
  final int timeInOffice;
  final String partyId;

  DistrictIncumbentDetails(
      {required this.id,
      required this.name,
      required this.timeInOffice,
      required this.partyId});

  // JSON serialization helpers
  factory DistrictIncumbentDetails.fromJson(Map<String, dynamic> json) =>
      _$DistrictIncumbentDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictIncumbentDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DistrictChallengerDetails {
  final List<Challenger> list;

  DistrictChallengerDetails({required this.list});

  // JSON serialization helpers
  factory DistrictChallengerDetails.fromJson(Map<String, dynamic> json) =>
      _$DistrictChallengerDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictChallengerDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DistrictSummary {
  final String name;
  final String region;
  final String electoralGroup;
  final List<String> control;

  DistrictSummary(
      {required this.name,
      required this.region,
      required this.electoralGroup,
      required this.control});

  // JSON serialization helpers
  factory DistrictSummary.fromJson(Map<String, dynamic> json) =>
      _$DistrictSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictSummaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DistrictDetailsInterface {
  final DistrictPartyDetails party;
  final DistrictIncumbentDetails incumbent;
  final DistrictChallengerDetails challengers;
  final DistrictSummary summary;

  DistrictDetailsInterface(
      {required this.party,
      required this.incumbent,
      required this.challengers,
      required this.summary});

  @override
  String toString() {
    return '${this.summary.name}, ${this.summary.region} (${this.summary.electoralGroup})';
  }

  // JSON serialization helpers
  factory DistrictDetailsInterface.fromJson(Map<String, dynamic> json) =>
      _$DistrictDetailsInterfaceFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictDetailsInterfaceToJson(this);
}
