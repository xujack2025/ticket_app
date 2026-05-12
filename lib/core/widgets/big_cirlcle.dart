import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';
import 'package:ticket_app/core/widgets/app_layoutbuilder_widget.dart';

class BigCirlcle extends StatelessWidget {
  const BigCirlcle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppStyle.ticketUpper,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 10,
                width: 10,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppStyle.bgColor,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppStyle.bgColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          color: AppStyle.ticketUpper,
          child: AppLayoutbuilderWidget(randomDivider: 16, width: 6),
        ),
        Container(
          color: AppStyle.ticketBottom,
          child: Row(
            children: [
              SizedBox(
                height: 10,
                width: 10,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppStyle.bgColor,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
                  ),
                ),
              ),
              Expanded(child: Container()),
              SizedBox(
                height: 10,
                width: 10,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppStyle.bgColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
