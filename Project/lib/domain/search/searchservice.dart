import 'package:dartz/dartz.dart';
import 'package:project/domain/core/failures/main_failure.dart';
import 'package:project/domain/search/models/searchresponse/searchresponse.dart';

abstract class Searchservice {
  Future<Either<MainFailure, Searchresponse>> searchMovies({
    required String movieQuery,
  });
}
