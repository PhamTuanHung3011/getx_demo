import 'package:json_annotation/json_annotation.dart';

part 'top_upcoming_model.g.dart';

@JsonSerializable()
class TopUpcomingResult {
  bool? adult;
  String? backdrop_path;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? poster_path;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  TopUpcomingResult(
      {this.adult,
        this.backdrop_path,
        this.genreIds,
        this.id,
        this.originalLanguage,
        this.originalTitle,
        this.overview,
        this.popularity,
        this.poster_path,
        this.releaseDate,
        this.title,
        this.video,
        this.voteAverage,
        this.voteCount});

  factory TopUpcomingResult.fromJson(Map<String, dynamic> json) => _$TopUpcomingResultFromJson(json);
  Map<String, dynamic> toJson() => _$TopUpcomingResultToJson(this);
}