// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Searchresponse _$SearchresponseFromJson(Map<String, dynamic> json) =>
    Searchresponse(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => searchResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchresponseToJson(Searchresponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

searchResultData _$searchResultDataFromJson(Map<String, dynamic> json) =>
    searchResultData(
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String,
    );

Map<String, dynamic> _$searchResultDataToJson(searchResultData instance) =>
    <String, dynamic>{
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
