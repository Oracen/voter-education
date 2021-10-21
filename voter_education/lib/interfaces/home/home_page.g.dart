// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePageStory _$HomePageStoryFromJson(Map<String, dynamic> json) {
  return HomePageStory(
    id: json['id'] as int,
    title: json['title'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$HomePageStoryToJson(HomePageStory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
    };
