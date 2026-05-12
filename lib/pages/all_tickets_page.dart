import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/utils/all_json.dart';
import 'package:ticket_app/core/widgets/ticket_view.dart';

class AllTicketsPage extends StatelessWidget {
  const AllTicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(title: Text("All Tickets"), backgroundColor: AppStyle.bgColor),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((singleTicket) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TicketView(ticket: singleTicket, wholeScreen: true),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
