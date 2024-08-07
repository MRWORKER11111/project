import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/downloads/i_downloads_repo.dart';
import 'package:project/domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final dummyvideourls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IDownloadsRepo _downloadService,
  ) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      emit(FastLaughState(
          videolist: [], isloading: true, iserror: false, likedMoviesIds: []));
      //get trending movie
      final _result = await _downloadService.getdownloadsImage();
      final _state = _result.fold((l) {
        return FastLaughState(
            videolist: [],
            isloading: false,
            iserror: true,
            likedMoviesIds: state.likedMoviesIds);
      },
          (resp) => FastLaughState(
              videolist: resp,
              isloading: false,
              iserror: false,
              likedMoviesIds: state.likedMoviesIds));

      //send to ui
      emit(_state);
    });

    on<Likedvideo>(
      (event, emit) async {
        state.likedMoviesIds.add(event.id);
        emit(state.copyWith(likedMoviesIds: state.likedMoviesIds));
      },
    );
    on<Unlikedvideo>(
      (event, emit) async {
        state.likedMoviesIds.remove(event.id);
        emit(state.copyWith(likedMoviesIds: state.likedMoviesIds));
      },
    );
  }
}
