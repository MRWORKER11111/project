part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<HotandNewData> pastyearmovielist,
    required List<HotandNewData> trendingmovielist,
    required List<HotandNewData> tensedramasmovielist,
    required List<HotandNewData> southIndianmovielist,
    required List<HotandNewData> trendingTVlist,
    required bool isloading,
    required bool isError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
    stateId: '0',
        pastyearmovielist: [],
        trendingmovielist: [],
        tensedramasmovielist: [],
           southIndianmovielist: [],
        trendingTVlist: [],
        isloading: false,
        isError: false, 
      );
}
