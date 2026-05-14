import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/app_media.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/utils/all_json.dart';
import 'package:ticket_app/core/widgets/app_column_text_layout.dart';
import 'package:ticket_app/core/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/core/widgets/ticket_view.dart';
import 'package:ticket_app/pages/search/app_ticket_tabs.dart';
import 'package:ticket_app/pages/ticket/ticket_positioned_circle.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      debugPrint("passed index ${args["index"]}");
      ticketIndex = args["index"];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tickets", style: AppStyle.headLineStyle1),
        centerTitle: false,
        backgroundColor: AppStyle.bgColor,
      ),
      backgroundColor: AppStyle.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(20),
            children: [
              // SizedBox(height: 20),
              AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),

              /// Ticket Details Infomation Part 1
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                ),
              ),

              /// Ticket Details Infomation Part 2
              SizedBox(height: 1),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyle.ticketBgColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "Flutter DB",
                          bottomText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "5221 36869",
                          bottomText: "passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppLayoutbuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "1273 2739732",
                          bottomText: "E-ticket's Number",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "B18947",
                          bottomText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppLayoutbuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.network(AppMedia.visaLogo, scale: 75),
                                Text(
                                  " **** 2683",
                                  style: AppStyle.headLineStyle3,
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Payment Method",
                              style: AppStyle.headLineStyle4,
                            ),
                          ],
                        ),
                        AppColumnTextLayout(
                          topText: "\$299.99",
                          bottomText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /// Ticket Details QR
              SizedBox(height: 1),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: AppStyle.ticketBgColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      data: 'https://github.com/xujack2025',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: AppStyle.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),

              /// Ticket Summary View
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(ticket: ticketList[ticketIndex]),
              ),
            ],
          ),
          TicketPositionedCircle(pos: true),
          TicketPositionedCircle(),
          // TicketPositionedCircle(pos: null),
        ],
      ),
    );
  }
}
