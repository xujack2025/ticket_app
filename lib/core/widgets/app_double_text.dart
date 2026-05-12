import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.title, required this.linkText});
  final String title;
  final String linkText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyle.headLineStyle2),
        InkWell(
          onTap: () {},
          child: Text(
            linkText,
            style: AppStyle.textStyle.copyWith(color: AppStyle.primary),
          ),
        ),
      ],
    );
  }
}
