import 'package:dartz/dartz.dart';
import 'package:project/domain/core/failures/main_failure.dart';
import 'package:project/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getdownloadsImage();
}
