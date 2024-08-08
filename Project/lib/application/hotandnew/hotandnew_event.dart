part of 'hotandnew_bloc.dart';

@freezed
class HotandnewEvent with _$HotandnewEvent {
  const factory HotandnewEvent.loaddataCommingSoon() = _LoaddataCommingSoon;
  const factory HotandnewEvent.loaddataEveryoneswatching() =
      _LoaddataEveryoneswatching;
}