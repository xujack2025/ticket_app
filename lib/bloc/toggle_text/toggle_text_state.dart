part of 'toggle_text_bloc.dart';

@immutable
sealed class ToggleTextState {}

final class ToggleTextInitial extends ToggleTextState {}

final class ToggleSucces extends ToggleTextState {
  final bool isExpanded;
  ToggleSucces(this.isExpanded);
}
