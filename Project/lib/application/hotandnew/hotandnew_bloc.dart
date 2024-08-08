import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project/domain/core/failures/main_failure.dart';
import 'package:project/domain/hotandnew/hotandnewservice.dart';
import 'package:project/domain/hotandnew/models/hotandnew.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final Hotandnewservice _hotandnewservice;
  HotandnewBloc(this._hotandnewservice) : super(HotandnewState.initial()) {
    on<_LoaddataCommingSoon>((event, emit) async {
      emit(const HotandnewState(
        commingsoonList: [],
        everyoneisWatchingList: [],
        isLoading: true,
        isError: false,
      ));
      final _result = await _hotandnewservice.getHotandNewMovieData();
      _result.fold((MainFailure failure) {
        return const HotandnewState(
          commingsoonList: [],
          everyoneisWatchingList: [],
          isLoading: false,
          isError: false,
        );
      }, (HotandnewResp resp) {
        return HotandnewState(
            commingsoonList: resp.results,
            everyoneisWatchingList: [],
            isLoading: false,
            isError: false);
      });
    });
  }
}
