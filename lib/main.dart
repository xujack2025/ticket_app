import 'package:flutter/material.dart';
import 'package:ticket_app/core/bottom_nav_bar.dart';
import 'package:ticket_app/pages/all_hotels_page.dart';
import 'package:ticket_app/pages/all_tickets_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const BottomNavBar(),
        "/all_tickets_page": (context) => const AllTicketsPage(),
        "/all_hotels_page": (context) => const AllHotelsPage(),
      },
    );
  }
}
