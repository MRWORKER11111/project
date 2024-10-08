import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/core/failures/main_failure.dart';
import 'package:project/domain/downloads/i_downloads_repo.dart';
import 'package:project/domain/downloads/models/downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;

  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_getdownloadsImage>(
      (event, emit) async {
        emit(
          state.copyWith(
            isloading: true,
            downloadfailureorsuccussooption: none(),
          ),
        );
        final Either<MainFailure, List<Downloads>> downloadsOption =
            await _downloadsRepo.getdownloadsImage();
        log(downloadsOption.toString());
        emit(
          downloadsOption.fold(
            (failure) => state.copyWith(
              isloading: false,
              downloadfailureorsuccussooption: some(left(failure)),
            ),
            (success) => state.copyWith(
              isloading: false,
              downloads: success,
              downloadfailureorsuccussooption: some(Right(success)),
            ),
          ),
        );
        log(_downloadsRepo.getdownloadsImage().toString());
      },
    );
  }
}
