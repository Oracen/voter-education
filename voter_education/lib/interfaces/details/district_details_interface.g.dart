// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_details_interface.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Challenger _$ChallengerFromJson(Map<String, dynamic> json) {
  return Challenger(
    id: json['id'] as String,
    name: json['name'] as String,
    age: json['age'] as int,
  );
}

Map<String, dynamic> _$ChallengerToJson(Challenger instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
    };

DistrictPartyDetails _$DistrictPartyDetailsFromJson(Map<String, dynamic> json) {
  return DistrictPartyDetails(
    id: json['id'] as String,
    members: json['members'] as int,
  );
}

Map<String, dynamic> _$DistrictPartyDetailsToJson(
        DistrictPartyDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'members': instance.members,
    };

DistrictIncumbentDetails _$DistrictIncumbentDetailsFromJson(
    Map<String, dynamic> json) {
  return DistrictIncumbentDetails(
    id: json['id'] as String,
    name: json['name'] as String,
    timeInOffice: json['timeInOffice'] as int,
    partyId: json['partyId'] as String,
  );
}

Map<String, dynamic> _$DistrictIncumbentDetailsToJson(
        DistrictIncumbentDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'timeInOffice': instance.timeInOffice,
      'partyId': instance.partyId,
    };

DistrictChallengerDetails _$DistrictChallengerDetailsFromJson(
    Map<String, dynamic> json) {
  return DistrictChallengerDetails(
    list: (json['list'] as List<dynamic>)
        .map((e) => Challenger.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DistrictChallengerDetailsToJson(
        DistrictChallengerDetails instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

DistrictSummary _$DistrictSummaryFromJson(Map<String, dynamic> json) {
  return DistrictSummary(
    name: json['name'] as String,
    region: json['region'] as String,
    electoralGroup: json['electoralGroup'] as String,
    control:
        (json['control'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$DistrictSummaryToJson(DistrictSummary instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'electoralGroup': instance.electoralGroup,
      'control': instance.control,
    };

DistrictDetailsInterface _$DistrictDetailsInterfaceFromJson(
    Map<String, dynamic> json) {
  return DistrictDetailsInterface(
    party: DistrictPartyDetails.fromJson(json['party'] as Map<String, dynamic>),
    incumbent: DistrictIncumbentDetails.fromJson(
        json['incumbent'] as Map<String, dynamic>),
    challengers: DistrictChallengerDetails.fromJson(
        json['challengers'] as Map<String, dynamic>),
    summary: DistrictSummary.fromJson(json['summary'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DistrictDetailsInterfaceToJson(
        DistrictDetailsInterface instance) =>
    <String, dynamic>{
      'party': instance.party.toJson(),
      'incumbent': instance.incumbent.toJson(),
      'challengers': instance.challengers.toJson(),
      'summary': instance.summary.toJson(),
    };
