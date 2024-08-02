import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/core/api_end_points.dart';
import 'package:project/domain/core/failures/main_failure.dart';
import 'package:project/domain/search/models/searchresponse/searchresponse.dart';
import 'package:project/domain/search/searchservice.dart';

@LazySingleton(as: SearchService)
class SearchImplentation implements SearchService {
  @override
  Future<Either<MainFailure, Searchresponse>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.search,
        queryParameters: {
          'query': movieQuery,
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Searchresponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
