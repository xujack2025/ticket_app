import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/widgets/app_layoutbuilder_widget.dart';

class BigCirlcle extends StatelessWidget {
  final bool? isColor;

  const BigCirlcle({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: isColor == null
              ? AppStyle.ticketUpper
              : AppStyle.ticketBgColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HalfCircle(
                side: const BorderRadius.only(topRight: Radius.circular(10)),
                isColor: isColor,
              ),
              HalfCircle(
                side: const BorderRadius.only(topLeft: Radius.circular(10)),
                isColor: isColor,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          color: isColor == null ? AppStyle.ticketUpper : Colors.grey.shade200,
          child: const AppLayoutbuilderWidget(randomDivider: 16, width: 6),
        ),
        Container(
          color: isColor == null
              ? AppStyle.ticketBottom
              : AppStyle.ticketBgColor,
          child: Row(
            children: [
              HalfCircle(
                side: const BorderRadius.only(bottomRight: Radius.circular(10)),
                isColor: isColor,
              ),
              Expanded(child: Container()),
              HalfCircle(
                side: const BorderRadius.only(bottomLeft: Radius.circular(10)),
                isColor: isColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HalfCircle extends StatelessWidget {
  final BorderRadius side;
  final bool? isColor;

  const HalfCircle({super.key, this.isColor, required this.side});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isColor == null ? AppStyle.bgColor : AppStyle.bgColor,
          borderRadius: side,
        ),
      ),
    );
  }
}
