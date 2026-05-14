part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavEvent {}

final class OnItemTapped extends BottomNavEvent {
  final int index;
  OnItemTapped(this.index);
}
