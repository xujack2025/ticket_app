import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyle.findTicketsColor,
      ),
      child: Center(
        child: Text(
          "find tickets",
          style: AppStyle.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
