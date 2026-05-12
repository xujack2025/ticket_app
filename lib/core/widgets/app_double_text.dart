import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_style.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({
    super.key,
    required this.title,
    required this.linkText,
    required this.function,
  });
  final String title;
  final String linkText;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyle.headLineStyle2),
        InkWell(
          onTap: function,
          child: Text(
            linkText,
            style: AppStyle.textStyle.copyWith(color: AppStyle.primary),
          ),
        ),
      ],
    );
  }
}
