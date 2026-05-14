import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:ticket_app/core/bottom_nav_bar.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import 'package:ticket_app/pages/home/all_hotels_page.dart';
import 'package:ticket_app/pages/home/all_tickets_page.dart';
import 'package:ticket_app/pages/hotel_details_page.dart';
import 'package:ticket_app/pages/ticket/ticket_page.dart';

void main() {
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => BottomNavBar(),
        AppRoutes.allTicketsPage: (context) => const AllTicketsPage(),
        AppRoutes.ticketPage: (context) => const TicketPage(),
        AppRoutes.allHotelsPage: (context) => const AllHotelsPage(),
        AppRoutes.hotelDetailsPage: (context) => const HotelDetailsPage(),
      },
    );
  }
}
