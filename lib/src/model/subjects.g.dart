// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subjects _$SubjectsFromJson(Map<String, dynamic> json) {
  return Subjects(
    json['rating'] == null
        ? null
        : Rating.fromJson(json['rating'] as Map<String, dynamic>),
    (json['genres'] as List)?.map((e) => e as String)?.toList(),
    json['title'] as String,
    (json['casts'] as List)
        ?.map(
            (e) => e == null ? null : Casts.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['durations'] as List)?.map((e) => e as String)?.toList(),
    json['collect_count'] as int,
    json['mainland_pubdate'] as String,
    json['has_video'] as bool,
    json['original_title'] as String,
    json['subtype'] as String,
    (json['directors'] as List)
        ?.map((e) =>
            e == null ? null : Directors.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['pubdates'] as List)?.map((e) => e as String)?.toList(),
    json['year'] as String,
    json['images'] == null
        ? null
        : Images.fromJson(json['images'] as Map<String, dynamic>),
    json['alt'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$SubjectsToJson(Subjects instance) => <String, dynamic>{
      'rating': instance.rating,
      'genres': instance.genres,
      'title': instance.title,
      'casts': instance.casts,
      'durations': instance.durations,
      'collect_count': instance.collectCount,
      'mainland_pubdate': instance.mainlandPubdate,
      'has_video': instance.hasVideo,
      'original_title': instance.originalTitle,
      'subtype': instance.subtype,
      'directors': instance.directors,
      'pubdates': instance.pubdates,
      'year': instance.year,
      'images': instance.images,
      'alt': instance.alt,
      'id': instance.id,
    };
