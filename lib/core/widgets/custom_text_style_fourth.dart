import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';

class CustomTextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;

  const CustomTextStyleFourth({
    super.key,
    required this.text,
    this.align = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyle.headLineStyle4.copyWith(color: Colors.white),
    );
  }
}
