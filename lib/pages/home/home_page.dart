import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/app_media.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/utils/all_json.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import 'package:ticket_app/core/widgets/app_double_text.dart';
import 'package:ticket_app/core/widgets/heading_text.dart';
import 'package:ticket_app/core/widgets/ticket_view.dart';
import 'package:ticket_app/pages/home/hotel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        children: [
          Container(
            // color: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: AppStyle.headLineStyle3),
                        SizedBox(height: 5),
                        HeadingText(text: "Book Tickets", isColor: true),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search"),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                AppDoubleText(
                  title: 'Upcoming Flights',
                  linkText: 'View all',
                  function: () =>
                      Navigator.pushNamed(context, AppRoutes.allTicketsPage),
                ),

                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.take(2).map((singleTicket) {
                      return GestureDetector(
                        onTap: () {
                          var index = ticketList.indexOf(singleTicket);
                          Navigator.pushNamed(
                            context,
                            AppRoutes.ticketPage,
                            arguments: {"index": index},
                          );
                        },
                        child: TicketView(ticket: singleTicket),
                      );
                    }).toList(),
                  ),
                ),

                const SizedBox(height: 40),
                AppDoubleText(
                  title: 'Hotels',
                  linkText: 'View all',
                  function: () =>
                      Navigator.pushNamed(context, AppRoutes.allHotelsPage),
                ),

                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList.take(2).map((singleHotel) {
                      return GestureDetector(
                        onTap: () {
                          var index = hotelList.indexOf(singleHotel);
                          Navigator.pushNamed(
                            context,
                            AppRoutes.hotelDetailsPage,
                            arguments: {"index": index},
                          );
                        },
                        child: Hotel(hotel: singleHotel),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
