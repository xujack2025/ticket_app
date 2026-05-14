import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/widgets/app_column_text_layout.dart';
import 'package:ticket_app/core/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/core/widgets/big_cirlcle.dart';
import 'package:ticket_app/core/widgets/big_dot.dart';
import 'package:ticket_app/core/widgets/custom_text_style_fourth.dart';
import 'package:ticket_app/core/widgets/custom_text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView({
    super.key,
    required this.ticket,
    this.wholeScreen = false,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 181,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            /// Ticket Upper Side
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyle.ticketUpper
                    : AppStyle.ticketBgColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  /// Show departure and destination terms with icons and lines
                  Row(
                    children: [
                      CustomTextStyleThird(
                        text: ticket["from"]["code"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(
                                randomDivider: 6,
                                isColor: isColor,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : AppStyle.planeSecondColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      CustomTextStyleThird(
                        text: ticket["to"]["code"],
                        isColor: isColor,
                      ),
                    ],
                  ),

                  /// Show departure and destination with names and time
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: CustomTextStyleFourth(
                          text: ticket["from"]["name"],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      CustomTextStyleFourth(
                        text: ticket["flying_time"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: CustomTextStyleFourth(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                          isColor: isColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// Divier: Circle and Dots
            BigCirlcle(isColor: isColor),

            /// Tickect Bottom Side
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyle.ticketBottom
                    : AppStyle.ticketBgColor,
                borderRadius: isColor == null
                    ? const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21),
                      )
                    : const BorderRadius.all(Radius.zero),
              ),
              child: Column(
                children: [
                  /// Show departure and destination terms with icons and lines
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: ticket["date"],
                        bottomText: 'DATE',
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: 'Departure Time',
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["seat"],
                        bottomText: 'Seats',
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
