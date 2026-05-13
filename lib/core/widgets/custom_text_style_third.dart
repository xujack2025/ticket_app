import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';

class CustomTextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;

  const CustomTextStyleThird({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == null
          ? AppStyle.headLineStyle3.copyWith(color: Colors.white)
          : AppStyle.headLineStyle3,
    );
  }
}
