import 'package:json_annotation/json_annotation.dart';
import 'package:voter_education/enums/datavis_enum.dart';

part 'chart_data.g.dart';

@JsonSerializable(explicitToJson: true)
class DataVisObject {
  final AppChartType visType;
  final List<double> x;
  final List<double> y;
  final List<String> categories;
  final String xLabel;
  final String yLabel;

  DataVisObject({
    required this.visType,
    required this.x,
    required this.y,
    required this.categories,
    required this.xLabel,
    required this.yLabel,
  });

  // JSON serialization helpers
  factory DataVisObject.fromJson(Map<String, dynamic> json) =>
      _$DataVisObjectFromJson(json);

  Map<String, dynamic> toJson() => _$DataVisObjectToJson(this);
}
