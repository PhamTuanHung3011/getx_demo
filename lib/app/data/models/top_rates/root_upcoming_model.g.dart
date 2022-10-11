// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_upcoming_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RootUpComing _$RootUpComingFromJson(Map<String, dynamic> json) => RootUpComing(
      dates: json['dates'] == null
          ? null
          : Dates.fromJson(json['dates'] as Map<String, dynamic>),
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => TopUpcomingResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
      totalResults: json['totalResults'] as int?,
    );

Map<String, dynamic> _$RootUpComingToJson(RootUpComing instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
