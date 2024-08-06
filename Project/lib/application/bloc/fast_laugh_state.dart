part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<Downloads> videolist,
    required bool isloading,
    required bool iserror,
  }) = _Initial;

  factory FastLaughState.initial() => FastLaughState(
        videolist: [],
        isloading: true,
        iserror: false,
      );
}
