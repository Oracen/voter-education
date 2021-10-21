import 'package:json_annotation/json_annotation.dart';

part 'home_page.g.dart';

@JsonSerializable(explicitToJson: true)
class HomePageStory {
  final int id;
  final String title;
  final String text;

  HomePageStory({required this.id, required this.title, required this.text});

  // JSON serialization helpers
  factory HomePageStory.fromJson(Map<String, dynamic> json) =>
      _$HomePageStoryFromJson(json);

  Map<String, dynamic> toJson() => _$HomePageStoryToJson(this);
}
