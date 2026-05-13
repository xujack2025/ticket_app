import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/utils/all_json.dart';
import 'package:ticket_app/core/widgets/ticket_view.dart';
import 'package:ticket_app/pages/home/hotel.dart';

class AllHotelsPage extends StatelessWidget {
  const AllHotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(title: Text("All Hotels"), backgroundColor: AppStyle.bgColor),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelList.map((singleHotel) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: HotelView(hotel: singleHotel, wholeScreen: true),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
