import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/core/failures/main_failure.dart';
import 'package:project/domain/downloads/i_downloads_repo.dart';
import 'package:project/domain/downloads/models/downloads.dart';
import 'package:project/domain/search/models/searchresponse/searchresponse.dart';
import 'package:project/domain/search/searchservice.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsRepo;
  final SearchService _searchService;
  SearchBloc(this._searchService, this._downloadsRepo)
      : super(SearchState.initial()) {
    //idle state
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
          searchResultList: [],
          idleList: state.idleList,
          isloading: false,
          isError: false,
        ));
        return;
      }

      emit(SearchState(
        searchResultList: [],
        idleList: [],
        isloading: true,
        isError: false,
      ));

      //get trending
      final _result = await _downloadsRepo.getdownloadsImage();
      final _state = _result.fold((MainFailure f) {
        return SearchState(
          searchResultList: [],
          idleList: [],
          isloading: false,
          isError: true,
        );
      }, (List<Downloads> list) {
        return SearchState(
          searchResultList: [],
          idleList: list,
          isloading: false,
          isError: false,
        );
      });
      //show to ui
      emit(_state);
    });

    //search state
    on<SearchMovie>((event, emit) async {
      //call search movie api
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      //show to ui
      print(_result);
    });
  }
}
