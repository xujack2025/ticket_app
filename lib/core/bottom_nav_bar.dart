import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/controller/bottom_nav_controller.dart';
import 'package:ticket_app/pages/home/home_page.dart';
import 'package:ticket_app/pages/profile/profile.dart';
import 'package:ticket_app/pages/search/search_page.dart';
import 'package:ticket_app/pages/ticket/ticket_page.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final controller = Get.put(BottomNavController());

  final appScreens = const [HomePage(), SearchPage(), TicketPage(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: appScreens[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.onItemTapped,
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
    });
  }
}
