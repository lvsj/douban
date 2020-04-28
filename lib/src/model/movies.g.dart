// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return Movies(
    json['count'] as int,
    json['start'] as int,
    json['total'] as int,
    (json['subjects'] as List)
        ?.map((e) =>
            e == null ? null : Subjects.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['title'] as String,
  );
}

Map<String, dynamic> _$MoviesToJson(Movies instance) => <String, dynamic>{
      'count': instance.count,
      'start': instance.start,
      'total': instance.total,
      'subjects': instance.subjects,
      'title': instance.title,
    };
