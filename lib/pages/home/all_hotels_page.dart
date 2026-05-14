import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/utils/all_json.dart';
import 'package:ticket_app/core/utils/app_routes.dart';

class AllHotelsPage extends StatelessWidget {
  const AllHotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        title: const Text("All Hotels"),
        backgroundColor: AppStyle.bgColor,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 6),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 16,
              childAspectRatio: 0.88,
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              var singleHotel = hotelList[index];
              return HotelGridView(hotel: singleHotel, index: index);
            },
          ),
        ),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final bool wholeScreen;
  final int index;
  final Map<String, dynamic> hotel;

  const HotelGridView({
    super.key,
    this.wholeScreen = false,
    required this.hotel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.hotelDetailsPage,
          arguments: {"index": index},
        );
      },
      child: Container(
        height: 350,
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppStyle.primary,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                  color: AppStyle.primary,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              hotel['place'],
              style: AppStyle.headLineStyle3.copyWith(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotel["destination"],
                  style: AppStyle.headLineStyle3.copyWith(
                    color: AppStyle.khakiColor,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  "\$${hotel['price']}/night",
                  style: AppStyle.headLineStyle4.copyWith(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
