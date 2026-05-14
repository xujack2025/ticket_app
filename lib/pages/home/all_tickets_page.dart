import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/utils/all_json.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import 'package:ticket_app/core/widgets/ticket_view.dart';

class AllTicketsPage extends StatelessWidget {
  const AllTicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        title: const Text("All Tickets"),
        backgroundColor: AppStyle.bgColor,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((singleTicket) {
                return GestureDetector(
                  onTap: () {
                    var index = ticketList.indexOf(singleTicket);
                    Navigator.pushNamed(
                      context,
                      AppRoutes.ticketPage,
                      arguments: {"index": index},
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: TicketView(ticket: singleTicket, wholeScreen: true),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
