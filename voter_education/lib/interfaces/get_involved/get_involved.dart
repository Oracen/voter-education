import 'package:json_annotation/json_annotation.dart';

part 'get_involved.g.dart';

@JsonSerializable(explicitToJson: true)
class PartyChoice {
  final int id; //0 Lib, 1 Lab, 2, other

  PartyChoice({required this.id});

  // JSON serialization helpers
  factory PartyChoice.fromJson(Map<String, dynamic> json) =>
      _$PartyChoiceFromJson(json);

  Map<String, dynamic> toJson() => _$PartyChoiceToJson(this);
}
