import 'package:json_annotation/json_annotation.dart';

part 'hotandnew.g.dart';

@JsonSerializable()
class HotandnewResp {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'results')
  List<HotandNewData> results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  HotandnewResp(
      {this.page, this.results = const [], this.totalPages, this.totalResults});

  factory HotandnewResp.fromJson(Map<String, dynamic> json) {
    return _$HotandnewRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotandnewRespToJson(this);
}

@JsonSerializable()
class HotandNewData {
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: '')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'video')
  bool? video;

  HotandNewData({
    this.adult,
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
  });

  factory HotandNewData.fromJson(Map<String, dynamic> json) {
    return _$HotandNewDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotandNewDataToJson(this);
}
