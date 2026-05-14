import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/utils/all_json.dart';

class HotelDetailsPage extends StatefulWidget {
  const HotelDetailsPage({super.key});

  @override
  State<HotelDetailsPage> createState() => _HotelDetailsPageState();
}

class _HotelDetailsPageState extends State<HotelDetailsPage> {
  late int hotelIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      hotelIndex = args["index"];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyle.primary,
                  ),
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[hotelIndex]["image"]}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: Colors.black.withValues(alpha: 0.5),
                      child: Text(
                        hotelList[hotelIndex]["place"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                              color: AppStyle.red,
                              // offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16),
                child: ExpandedTextWidget(text: hotelList[hotelIndex]["detail"]),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "More Images",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotelList[hotelIndex]["images"]?.length ?? 1,
                  itemBuilder: (context, imagesIndex) {
                    debugPrint("$hotelIndex");
                    if (hotelList[hotelIndex]["images"] != null) {
                      return Container(
                        margin: const EdgeInsets.all(16),
                        color: Colors.red,
                        child: Image.network(
                          hotelList[hotelIndex]["images"][imagesIndex],
                        ),
                      );
                    }
                    return Container(
                      margin: const EdgeInsets.all(16),
                      color: Colors.red,
                      child: Image.network("https://placehold.co/200x200.png"),
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatefulWidget {
  final String text;
  const ExpandedTextWidget({super.key, required this.text});

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool isExpanded = false;
  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textWidget = Text(
      widget.text,
      maxLines: isExpanded ? null : 3,
      overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            toggleExpansion();
          },
          child: Text(
            isExpanded ? "Less" : "More",
            style: AppStyle.textStyle.copyWith(color: AppStyle.primary),
          ),
        ),
      ],
    );
  }
}
