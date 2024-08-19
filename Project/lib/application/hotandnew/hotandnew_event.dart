part of 'hotandnew_bloc.dart';

@freezed
class HotandnewEvent with _$HotandnewEvent {
  const factory HotandnewEvent.loaddataCommingSoon() = LoaddataCommingSoon;
  const factory HotandnewEvent.loaddataEveryoneswatching() =
      LoaddataEveryoneswatching;
}
