// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_interface.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistrictInterface _$DistrictInterfaceFromJson(Map<String, dynamic> json) {
  return DistrictInterface(
    name: json['name'] as String,
    id: json['id'] as String,
    postcode: json['postcode'] as int,
    region: json['region'] as String,
  );
}

Map<String, dynamic> _$DistrictInterfaceToJson(DistrictInterface instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'postcode': instance.postcode,
      'region': instance.region,
    };
