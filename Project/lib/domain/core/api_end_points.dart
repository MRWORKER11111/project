import 'package:project/core/strings.dart';
import 'package:project/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kbaseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$kbaseUrl/search/movie?api_key=$apiKey";
  static const HotandnewMovie = "$kbaseUrl/discover/movie?api_key=$apiKey";
  static const HotandnewTv = "$kbaseUrl/discover/tv?api_key=$apiKey";
}
