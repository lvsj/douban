
import 'package:json_annotation/json_annotation.dart';
import 'avatars.dart';
part 'casts.g.dart';

@JsonSerializable()
class Casts  {

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

  Casts(this.avatars,this.nameEn,this.name,this.alt,this.id,);

  factory Casts.fromJson(Map<String, dynamic> srcJson) => _$CastsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CastsToJson(this);

}
