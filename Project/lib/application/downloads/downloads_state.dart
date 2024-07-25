part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isloading,
    List<DownloadsState>? downloads,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(isloading: false);
  }
}
