import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/core/api_end_points.dart';
import 'package:project/domain/core/failures/main_failure.dart';
import 'package:project/domain/hotandnew/hotandnewservice.dart';
import 'package:project/domain/hotandnew/models/hotandnew.dart';

@lazySingleton
class HotandNewImplementation implements Hotandnewservice {
  @override
  Future<Either<MainFailure, HotandnewResp>> getHotandNewMovieData() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.HotandnewMovie);
      // log("4  "+ response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotandnewResp.fromJson(response.data);
        log('1  ' + result.toString());
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioException catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    } catch (e) {
      log("2  " + e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HotandnewResp>> getHotandNewTvData() async {
    try {
      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.HotandnewTv,
      );
      // log("4  "+ response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotandnewResp.fromJson(response.data);
        log('1  ' + result.toString());
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioException catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    } catch (e) {
      log("2  " + e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
