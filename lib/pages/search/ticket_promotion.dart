import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/app_media.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * .42,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 2),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppMedia.hotelRoom),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text(
                "20% discount on the early booling of this flight. Don't miss it!",
                style: AppStyle.headLineStyle2,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  width: size.width * .44,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0xFF3AB8B8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor survey",
                        style: AppStyle.headLineStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Take the suervey about our services and get the discount",
                        style: AppStyle.headLineStyle2.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: AppStyle.circleColor),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15),
              width: size.width * 0.44,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xFFEC6545),
              ),
              child: Column(
                children: [
                  Text(
                    "Take Love",
                    style: AppStyle.headLineStyle2.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 15,
                          bottom: 0,
                          child: Text("🥰", style: TextStyle(fontSize: 50)),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 0,
                          child: Text("🥰", style: TextStyle(fontSize: 50)),
                        ),
                        Positioned(
                          left: 45,
                          child: Text("🥰", style: TextStyle(fontSize: 60)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
