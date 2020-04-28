// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatars.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Avatars _$AvatarsFromJson(Map<String, dynamic> json) {
  return Avatars(
    json['small'] as String,
    json['large'] as String,
    json['medium'] as String,
  );
}

Map<String, dynamic> _$AvatarsToJson(Avatars instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
      'medium': instance.medium,
    };
