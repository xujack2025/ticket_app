import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_app/bloc/bottom_nav/bottom_nav_bloc.dart';
import 'package:ticket_app/pages/home/home_page.dart';
import 'package:ticket_app/pages/profile/profile.dart';
import 'package:ticket_app/pages/search/search_page.dart';
import 'package:ticket_app/pages/ticket/ticket_page.dart';
import 'package:ticket_app/provider/bottom_nav_provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  final appScreens = const [HomePage(), SearchPage(), TicketPage(), Profile()];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        if (state is BottomNavSelected) {
          return Scaffold(
            body: appScreens[state.selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.selectedIndex,
              onTap: (value) {
                context.read<BottomNavBloc>().add(OnItemTapped(value));
              },
              // onTap: ref.watch(bottomNavProviderProvider.notifier).onItemTapped,
              selectedItemColor: Colors.blueGrey,
              unselectedItemColor: const Color(0xFF526400),
              showSelectedLabels: false,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                  label: "Home",
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                ),
                BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  label: "Search",
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_search_info_filled),
                ),
                BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                  label: "Tickets",
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                ),
                BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                  label: "Profile",
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                ),
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
