import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/downloads/models/downloads.dart';
import 'package:project/domain/search/models/searchresponse/searchresponse.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial()) {
    //idle state
    on<_Initialize>((event, emit) {});

    //search state
    on<_SearchMovie>((event, emit) {});
  }
}
