import 'package:getx_demo/app/data/models/populars/result_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'popular_model.g.dart';

@JsonSerializable()
class Popular {
  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;

  Popular(
      { this.page,
       this.results,
       this.totalPages,
       this.totalResults});

  factory Popular.fromJson(Map<String, dynamic>json) => _$PopularFromJson(json);
  Map<String, dynamic> toJson() => _$PopularToJson(this);
}
