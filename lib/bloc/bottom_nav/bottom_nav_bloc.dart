import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavSelected(0)) {
    on<OnItemTapped>((event, emit) {
      emit(BottomNavSelected(event.index));
    });
  }
}
