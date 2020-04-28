import 'package:json_annotation/json_annotation.dart';
import 'subjects.dart';
part 'movies.g.dart';

@JsonSerializable()
class Movies  {

  @JsonKey(name: 'count')
  int count;

  @JsonKey(name: 'start')
  int start;

  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'subjects')
  List<Subjects> subjects;

  @JsonKey(name: 'title')
  String title;

  Movies(this.count,this.start,this.total,this.subjects,this.title,);

  factory Movies.fromJson(Map<String, dynamic> srcJson) => _$MoviesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MoviesToJson(this);

}

