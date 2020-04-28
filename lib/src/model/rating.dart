
import 'package:json_annotation/json_annotation.dart';
import 'details.dart';
part 'rating.g.dart';

@JsonSerializable()
class Rating  {

  @JsonKey(name: 'max')
  int max;

  @JsonKey(name: 'average')
  double average;

  @JsonKey(name: 'details')
  Details details;

  @JsonKey(name: 'stars')
  String stars;

  @JsonKey(name: 'min')
  int min;

  Rating(this.max,this.average,this.details,this.stars,this.min,);

  factory Rating.fromJson(Map<String, dynamic> srcJson) => _$RatingFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RatingToJson(this);

}
