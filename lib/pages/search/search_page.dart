import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import 'package:ticket_app/core/widgets/app_double_text.dart';
import 'package:ticket_app/pages/search/app_text_icon.dart';
import 'package:ticket_app/pages/search/app_ticket_tabs.dart';
import 'package:ticket_app/pages/search/find_tickets.dart';
import 'package:ticket_app/pages/search/ticket_promotion.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            "What are\nyou looking for?",
            style: AppStyle.headLineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20),
          const AppTicketTabs(firstTab: 'All Tickets', secondTab: 'Hotels'),
          const SizedBox(height: 24),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const SizedBox(height: 20),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: 'Arrival'),
          const SizedBox(height: 24),
          const FindTickets(),
          const SizedBox(height: 40),
          AppDoubleText(
            title: 'Upcoming Flights',
            linkText: 'View all',
            function: () =>
                Navigator.pushNamed(context, AppRoutes.allTicketsPage),
          ),
          const SizedBox(height: 16),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
