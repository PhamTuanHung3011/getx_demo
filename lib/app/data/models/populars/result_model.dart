import 'package:json_annotation/json_annotation.dart';
part 'result_model.g.dart';

@JsonSerializable()
class Result {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Result(
      { this.adult,
       this.backdropPath,
       this.genreIds,
       this.id,
       this.originalLanguage,
       this.originalTitle,
       this.overview,
       this.popularity,
       this.posterPath,
       this.releaseDate,
       this.title,
       this.video,
       this.voteAverage,
       this.voteCount});

  factory Result.fromJson(Map<String, dynamic>json ) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
