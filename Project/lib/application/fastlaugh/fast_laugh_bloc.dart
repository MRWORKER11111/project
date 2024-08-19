import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
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

ValueNotifier<Set<int>> likedvideosidsnotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IDownloadsRepo _downloadService,
  ) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      emit(FastLaughState(
        videolist: [],
        isloading: true,
        iserror: false,
      ));
      //get trending movie
      final _result = await _downloadService.getdownloadsImage();
      final _state = _result.fold(
          (l) => FastLaughState(
                videolist: [],
                isloading: false,
                iserror: true,
              ),
          (resp) => FastLaughState(
                videolist: resp,
                isloading: false,
                iserror: false,
              ));

      //send to ui
      emit(_state);
    });

    on<Likedvideo>(
      (event, emit) async {
        likedvideosidsnotifier.value.add(event.id);
      },
    );
    on<Unlikedvideo>(
      (event, emit) async {
        likedvideosidsnotifier.value.remove(event.id);
      },
    );
  }
}
