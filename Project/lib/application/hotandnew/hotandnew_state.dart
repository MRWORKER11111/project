part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required List<HotandNewData> commingsoonList,
    required List<HotandNewData> everyoneisWatchingList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HotandnewState.initial() => HotandnewState(
        commingsoonList: [],
        everyoneisWatchingList: [],
        isLoading: false,
        isError: false,
      );
}