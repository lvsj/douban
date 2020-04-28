
import 'package:json_annotation/json_annotation.dart';

part 'images.g.dart';

@JsonSerializable()
class Images  {

  @JsonKey(name: 'small')
  String small;

  @JsonKey(name: 'large')
  String large;

  @JsonKey(name: 'medium')
  String medium;

  Images(this.small,this.large,this.medium,);

  factory Images.fromJson(Map<String, dynamic> srcJson) => _$ImagesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);

}

