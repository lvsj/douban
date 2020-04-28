// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return Rating(
    json['max'] as int,
    (json['average'] as num)?.toDouble(),
    json['details'] == null
        ? null
        : Details.fromJson(json['details'] as Map<String, dynamic>),
    json['stars'] as String,
    json['min'] as int,
  );
}

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'max': instance.max,
      'average': instance.average,
      'details': instance.details,
      'stars': instance.stars,
      'min': instance.min,
    };
