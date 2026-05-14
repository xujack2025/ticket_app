part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavState {}

final class BottomNavInitial extends BottomNavState {}

final class BottomNavSelected extends BottomNavState {
  final int selectedIndex;
  BottomNavSelected(this.selectedIndex);
  
}
