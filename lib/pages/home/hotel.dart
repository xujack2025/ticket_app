import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';

class Hotel extends StatelessWidget {
  final bool wholeScreen;
  final Map<String, dynamic> hotel;

  const Hotel({super.key, this.wholeScreen = false, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.6,
      height: 350,
      margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppStyle.primary,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyle.primary,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['place'],
              style: AppStyle.headLineStyle1.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["destination"],
              style: AppStyle.headLineStyle3.copyWith(
                color: AppStyle.khakiColor,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel['price']}/night",
              style: AppStyle.headLineStyle1.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
