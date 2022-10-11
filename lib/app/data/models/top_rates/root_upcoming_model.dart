
import 'package:getx_demo/app/data/models/top_rates/top_upcoming_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'date_time_model.dart';

part 'root_upcoming_model.g.dart';

@JsonSerializable()
class RootUpComing{
  Dates? dates;
  int? page;
  List<TopUpcomingResult>? results;
  int? totalPages;
  int? totalResults;

  RootUpComing(
      {this.dates,
        this.page,
        this.results,
        this.totalPages,
        this.totalResults});

  factory RootUpComing.fromJson(Map<String, dynamic> json) => _$RootUpComingFromJson(json);
  Map<String, dynamic> toJson() => _$RootUpComingToJson(this);
}