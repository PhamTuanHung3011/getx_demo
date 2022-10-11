import 'package:json_annotation/json_annotation.dart';
part 'date_time_model.g.dart';

@JsonSerializable()
class Dates {
  String? maximum;
  String? minimum;

  Dates({this.maximum, this.minimum});

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
  Map<String, dynamic> toJson() => _$DatesToJson(this);

}