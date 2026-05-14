import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/app_media.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/widgets/app_column_text_layout.dart';
import 'package:ticket_app/core/widgets/custom_text_style_third.dart';
import 'package:ticket_app/core/widgets/heading_text.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Padding(padding: EdgeInsetsGeometry.only(top: 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Show logo
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  color: AppStyle.white,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: NetworkImage(AppMedia.logo)),
                ),
              ),

              /// show columns text
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadingText(text: "Book Tickets", isColor: true),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                      color: AppStyle.profileBadgeColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyle.profileTextColor,
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "Premium Status",
                          style: TextStyle(
                            color: AppStyle.profileTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              const Text(
                "Edit",
                style: TextStyle(color: AppStyle.primary, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          /// Divider
          const SizedBox(height: 8),
          Divider(color: Colors.grey.shade300),

          /// Award Banner
          const SizedBox(height: 8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyle.primary,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyle.primary,
                        size: 27,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomTextStyleThird(text: "You got a new award"),
                        Text(
                          "You have 95 flights in a year",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withValues(alpha: 0.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: const Color(0xFF264CD2)),
                  ),
                ),
              ),
            ],
          ),

          /// Show Miles
          const SizedBox(height: 24),
          Text("Accumulated Miles", style: AppStyle.headLineStyle2),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppStyle.bgColor,
            ),
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,
                    color: AppStyle.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: AppStyle.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "14th May 2026",
                      style: AppStyle.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                // Divider
                const SizedBox(height: 4),
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 4),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "23 042",
                      bottomText: "Miles",
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topText: "Airline CO",
                      bottomText: "Received from",
                      isColor: true,
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),

                // Divider
                const SizedBox(height: 4),
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 4),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "25",
                      bottomText: "Miles",
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topText: "AirAsia",
                      bottomText: "Received from",
                      isColor: true,
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),

                // Divider
                const SizedBox(height: 4),
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 4),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "52 340",
                      bottomText: "Miles",
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topText: "MASK",
                      bottomText: "Received from",
                      isColor: true,
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),

                const SizedBox(height: 25),
                InkWell(
                  onTap: () {
                    //TODO
                  },
                  child: Text(
                    "How to get more miles",
                    style: AppStyle.textStyle.copyWith(
                      color: AppStyle.primary,
                      fontWeight: FontWeight.w500,
                    ),
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
