import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'district_interface.g.dart';

@JsonSerializable(explicitToJson: true)
class DistrictInterface {
  final String name;
  final String id;
  final int postcode;
  final String region;

  DistrictInterface(
      {required this.name,
      required this.id,
      required this.postcode,
      required this.region});

  @override
  String toString() {
    return '$name, $region';
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is DistrictInterface && other.name == name && other.id == id;
  }

  @override
  int get hashCode => hashValues(region, name, id);

  // JSON serialization helpers
  factory DistrictInterface.fromJson(Map<String, dynamic> json) =>
      _$DistrictInterfaceFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictInterfaceToJson(this);
}
