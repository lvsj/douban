import 'package:json_annotation/json_annotation.dart';

part 'details.g.dart';

@JsonSerializable()
class Details  {

  @JsonKey(name: '1')
  double one;

  @JsonKey(name: '2')
  double two;

  @JsonKey(name: '3')
  double three;

  @JsonKey(name: '4')
  double four;

  @JsonKey(name: '5')
  double five;

  Details(this.one,this.two,this.three,this.four,this.five,);

  factory Details.fromJson(Map<String, dynamic> srcJson) => _$DetailsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DetailsToJson(this);

}
