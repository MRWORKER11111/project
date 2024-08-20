import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/core/failures/main_failure.dart';
import 'package:project/domain/hotandnew/hotandnewservice.dart';
import 'package:project/domain/hotandnew/models/hotandnew.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@injectable
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final Hotandnewservice _hotandnewservice;
  HotandnewBloc(this._hotandnewservice) : super(HotandnewState.initial()) {
    //get hot and new movie data
    on<LoaddataCommingSoon>((event, emit) async {
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
    on<LoaddataEveryoneswatching>(
      //send loading to ui
      (event, emit) async { emit(const HotandnewState(
        commingsoonList: [],
        everyoneisWatchingList: [],
        isLoading: true,
        isError: false,
      ));

      //get data from remote
      final _result = await _hotandnewservice.getHotandNewTvData();

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
            commingsoonList:state.commingsoonList ,
            everyoneisWatchingList: resp.results,
            isLoading: false,
            isError: false);
      });
      emit(newstate);},
    );
  }
}
