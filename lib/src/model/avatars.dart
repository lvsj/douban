import 'package:json_annotation/json_annotation.dart';

part 'avatars.g.dart';

@JsonSerializable()
class Avatars {
  @JsonKey(name: 'small')
  String small;

  @JsonKey(name: 'large')
  String large;

  @JsonKey(name: 'medium')
  String medium;

  Avatars(
    this.small,
    this.large,
    this.medium,
  );

  factory Avatars.fromJson(Map<String, dynamic> srcJson) =>
      _$AvatarsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AvatarsToJson(this);
}
