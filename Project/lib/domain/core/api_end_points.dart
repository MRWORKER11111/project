import 'package:project/core/strings.dart';
import 'package:project/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kbaseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$kbaseUrl/trending/all/day?api_key=$apiKey ";
}
