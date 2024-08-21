import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/core/failures/main_failure.dart';
import 'package:project/domain/hotandnew/hotandnewservice.dart';
import 'package:project/domain/hotandnew/models/hotandnew.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Hotandnewservice _homehotandnewservice;
  HomeBloc(this._homehotandnewservice) : super(HomeState.initial()) {
    //on event get home screen data
    on<GetHomeScreenData>((event, emit) async {
      //send loading to ui
      emit(state.copyWith(
        isloading: true,
        isError: false,
      ));

      //get data
      final _movieresult = await _homehotandnewservice.getHotandNewMovieData();
      final _tvresult = await _homehotandnewservice.getHotandNewTvData();

      //transform data

      final _state1 = _movieresult.fold((MainFailure failure) {
        HomeState(
          pastyearmovielist: [],
          trendingmovielist: [],
          tensedramasmovielist: [],
          southIndianmovielist: [],
          trendingTVlist: [],
          isloading: false,
          isError: true,
        );
      }, (HotandnewResp response) {
        final pastyear = response.results;
        final trending = response.results;
        final dramas = response.results;
        final southindian = response.results;
        trending.shuffle();
        dramas.shuffle();
        pastyear.shuffle();
        southindian.shuffle();
        HomeState(
          pastyearmovielist: pastyear,
          trendingmovielist: trending,
          tensedramasmovielist: dramas,
          southIndianmovielist: southindian,
          trendingTVlist: state.trendingTVlist,
          isloading: false,
          isError: false,
        );
      });
      emit(_state1);

      final _state2 = _tvresult.fold(
        (MainFailure failure) {
          HomeState(
            pastyearmovielist: [],
            trendingmovielist: [],
            tensedramasmovielist: [],
            southIndianmovielist: [],
            trendingTVlist: [],
            isloading: false,
            isError: true,
          );
        },
        (HotandnewResp response) {
          final to10List = response.results;
          HomeState(
            pastyearmovielist: state.pastyearmovielist,
            trendingmovielist: state.trendingmovielist,
            tensedramasmovielist: state.tensedramasmovielist,
            southIndianmovielist: state.southIndianmovielist,
            trendingTVlist: to10List,
            isloading: false,
            isError: false,
          );
        },
      );
      //send to ui
      emit(_state2);
    });
  }
}
