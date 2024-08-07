import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project/domain/hotandnew/models/hotandnew.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part '../bloc/hotandnew_bloc.freezed.dart';

class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  HotandnewBloc() : super(HotandnewState.initial()) {
    on<HotandnewEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
