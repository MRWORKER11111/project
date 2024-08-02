import 'package:json_annotation/json_annotation.dart';

part 'searchresponse.g.dart';

@JsonSerializable()
class Searchresponse {
  @JsonKey(name: "results")
  List<searchResultData> results;

  Searchresponse({
    this.results = const [],
  });

  factory Searchresponse.fromJson(Map<String, dynamic> json) {
    return _$SearchresponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchresponseToJson(this);
}

@JsonSerializable()
class searchResultData {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  searchResultData({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory searchResultData.fromJson(Map<String, dynamic> json) {
    return _$searchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$searchResultDataToJson(this);
}
