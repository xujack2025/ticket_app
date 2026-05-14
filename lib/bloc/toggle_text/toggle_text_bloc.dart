import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'toggle_text_event.dart';
part 'toggle_text_state.dart';

class ToggleTextBloc extends Bloc<ToggleTextEvent, ToggleTextState> {
  ToggleTextBloc() : super(ToggleSucces(false)) {
    on<ToggleExpanded>((event, emit) {
      emit(ToggleSucces(event.isExpanded));
    });
  }
}
