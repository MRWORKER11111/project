import 'package:bloc/bloc.dart';

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
      //send loading to ui
      emit(const HotandnewState(
        commingsoonList: [],
        everyoneisWatchingList: [],
        isLoading: true,
        isError: false,
      ));

      //get data from remote
      final _result = await _hotandnewservice.getHotandNewMovieData();

      //data to state
      final newstate = _result.fold((MainFailure failure) {
        return const HotandnewState(
          commingsoonList: [],
          everyoneisWatchingList: [],
          isLoading: false,
          isError: true,
        );
      }, (HotandnewResp resp) {
        return HotandnewState(
            commingsoonList: resp.results,
            everyoneisWatchingList: state.everyoneisWatchingList,
            isLoading: false,
            isError: false);
      });
      emit(newstate);
    });
    on<_LoaddataEveryoneswatching>(
      (event, emit) {},
    );
  }
}
