// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Directors _$DirectorsFromJson(Map<String, dynamic> json) {
  return Directors(
    json['avatars'] == null
        ? null
        : Avatars.fromJson(json['avatars'] as Map<String, dynamic>),
    json['name_en'] as String,
    json['name'] as String,
    json['alt'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$DirectorsToJson(Directors instance) => <String, dynamic>{
      'avatars': instance.avatars,
      'name_en': instance.nameEn,
      'name': instance.name,
      'alt': instance.alt,
      'id': instance.id,
    };
