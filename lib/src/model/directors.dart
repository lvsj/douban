import 'package:json_annotation/json_annotation.dart';
import 'avatars.dart';
part 'directors.g.dart';

@JsonSerializable()
class Directors  {

  @JsonKey(name: 'avatars')
  Avatars avatars;

  @JsonKey(name: 'name_en')
  String nameEn;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'alt')
  String alt;

  @JsonKey(name: 'id')
  String id;

  Directors(this.avatars,this.nameEn,this.name,this.alt,this.id,);

  factory Directors.fromJson(Map<String, dynamic> srcJson) => _$DirectorsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DirectorsToJson(this);

}
