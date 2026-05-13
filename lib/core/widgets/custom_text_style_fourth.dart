import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';

class CustomTextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;

  const CustomTextStyleFourth({
    super.key,
    required this.text,
    this.align = TextAlign.start,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor == null
          ? AppStyle.headLineStyle4.copyWith(color: Colors.white)
          : AppStyle.headLineStyle4,
    );
  }
}
