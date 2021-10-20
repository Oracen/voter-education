import 'package:json_annotation/json_annotation.dart';

part 'district_compare_interface.g.dart';

@JsonSerializable(explicitToJson: true)
class DistrictStatToMap {
  final int districtId;
  final int statId;

  DistrictStatToMap({required this.districtId, required this.statId});

  // JSON serialization helpers
  factory DistrictStatToMap.fromJson(Map<String, dynamic> json) =>
      _$DistrictStatToMapFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictStatToMapToJson(this);
}
