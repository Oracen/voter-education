// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataVisObject _$DataVisObjectFromJson(Map<String, dynamic> json) {
  return DataVisObject(
    visType: _$enumDecode(_$AppChartTypeEnumMap, json['visType']),
    x: (json['x'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
    y: (json['y'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
    categories:
        (json['categories'] as List<dynamic>).map((e) => e as String).toList(),
    xLabel: json['xLabel'] as String,
    yLabel: json['yLabel'] as String,
  );
}

Map<String, dynamic> _$DataVisObjectToJson(DataVisObject instance) =>
    <String, dynamic>{
      'visType': _$AppChartTypeEnumMap[instance.visType],
      'x': instance.x,
      'y': instance.y,
      'categories': instance.categories,
      'xLabel': instance.xLabel,
      'yLabel': instance.yLabel,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$AppChartTypeEnumMap = {
  AppChartType.univariate: 'univariate',
  AppChartType.bivariate: 'bivariate',
  AppChartType.categorical: 'categorical',
};
