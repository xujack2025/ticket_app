import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';

class CustomTextStyleThird extends StatelessWidget {
  final String text;

  const CustomTextStyleThird({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyle.headLineStyle3.copyWith(color: Colors.white),
    );
  }
}
