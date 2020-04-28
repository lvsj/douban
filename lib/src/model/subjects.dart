import 'package:json_annotation/json_annotation.dart';
import 'rating.dart';
import 'casts.dart';
import 'directors.dart';
import 'images.dart';
part 'subjects.g.dart';


@JsonSerializable()
class Subjects  {

  @JsonKey(name: 'rating')
  Rating rating;

  @JsonKey(name: 'genres')
  List<String> genres;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'casts')
  List<Casts> casts;

  @JsonKey(name: 'durations')
  List<String> durations;

  @JsonKey(name: 'collect_count')
  int collectCount;

  @JsonKey(name: 'mainland_pubdate')
  String mainlandPubdate;

  @JsonKey(name: 'has_video')
  bool hasVideo;

  @JsonKey(name: 'original_title')
  String originalTitle;

  @JsonKey(name: 'subtype')
  String subtype;

  @JsonKey(name: 'directors')
  List<Directors> directors;

  @JsonKey(name: 'pubdates')
  List<String> pubdates;

  @JsonKey(name: 'year')
  String year;

  @JsonKey(name: 'images')
  Images images;

  @JsonKey(name: 'alt')
  String alt;

  @JsonKey(name: 'id')
  String id;

  Subjects(this.rating,this.genres,this.title,this.casts,this.durations,this.collectCount,this.mainlandPubdate,this.hasVideo,this.originalTitle,this.subtype,this.directors,this.pubdates,this.year,this.images,this.alt,this.id,);

  factory Subjects.fromJson(Map<String, dynamic> srcJson) => _$SubjectsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SubjectsToJson(this);

}
