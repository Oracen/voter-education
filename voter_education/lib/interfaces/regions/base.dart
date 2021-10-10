import 'package:flutter/cupertino.dart';

@immutable
class District {
  final String name;
  final int id;
  final int postcode;
  final String region;

  District(
      {required this.name,
      required this.id,
      required this.postcode,
      required this.region});

  @override
  String toString() {
    return '$name, $region';
  }

  factory District.fromJson(Map<String, dynamic> parsedJson) {
    return District(
        name: parsedJson['name'] as String,
        id: parsedJson['id'],
        postcode: parsedJson['postcode'],
        region: parsedJson['region'] as String);
  }
  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is District && other.name == name && other.id == id;
  }

  @override
  int get hashCode => hashValues(region, name, id);
}
