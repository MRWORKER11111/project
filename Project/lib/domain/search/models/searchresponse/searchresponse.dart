import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'searchresponse.g.dart';

@JsonSerializable()
class Searchresponse {
  @JsonKey(name: "results")
  List<searchResultData> results;

  Searchresponse({this.results = const []});

  factory Searchresponse.fromJson(Map<String, dynamic> json) {
    return _$SearchresponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchresponseToJson(this);
}

@JsonSerializable()
class searchResultData {
 
  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String posterPath;



  searchResultData({
    
    this.originalTitle,
   required this.posterPath,
  });

  factory searchResultData.fromJson(Map<String, dynamic> json) {
    return _$searchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$searchResultDataToJson(this);
}
