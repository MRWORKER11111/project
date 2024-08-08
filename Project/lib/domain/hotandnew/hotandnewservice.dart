import 'package:dartz/dartz.dart';
import 'package:project/domain/core/failures/main_failure.dart';
import 'package:project/domain/hotandnew/models/hotandnew.dart';

abstract class Hotandnewservice {
  Future<Either<MainFailure, HotandnewResp>> getHotandNewMovieData();
  Future<Either<MainFailure, HotandnewResp>> getHotandNewTvData();
}
