part of 'toggle_text_bloc.dart';

@immutable
sealed class ToggleTextEvent {}

final class ToggleExpanded extends ToggleTextEvent {
  final bool isExpanded;
  ToggleExpanded(this.isExpanded);

}
