// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotandnew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotandnewResp _$HotandnewRespFromJson(Map<String, dynamic> json) =>
    HotandnewResp(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => HotandNewData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HotandnewRespToJson(HotandnewResp instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

HotandNewData _$HotandNewDataFromJson(Map<String, dynamic> json) =>
    HotandNewData(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      id: (json['id'] as num?)?.toInt(),
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json[''] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
    );

Map<String, dynamic> _$HotandNewDataToJson(HotandNewData instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      '': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
    };
