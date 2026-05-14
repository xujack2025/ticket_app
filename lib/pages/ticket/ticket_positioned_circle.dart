import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';

class TicketPositionedCircle extends StatelessWidget {
  final bool? pos;

  const TicketPositionedCircle({super.key, this.pos});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pos == true ? 22 : null,
      right: pos == true ? null : 22,
      top: 252,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: AppStyle.textColor),
        ),
        child: CircleAvatar(maxRadius: 4, backgroundColor: AppStyle.textColor),
      ),
    );
  }
}
