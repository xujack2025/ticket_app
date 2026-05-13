import 'package:flutter/material.dart';
import 'package:ticket_app/core/widgets/custom_text_style_fourth.dart';
import 'package:ticket_app/core/widgets/custom_text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  const AppColumnTextLayout({
    super.key,
    required this.topText,
    required this.bottomText,
    this.alignment = CrossAxisAlignment.start,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        CustomTextStyleThird(text: topText, isColor: isColor),
        SizedBox(height: 5),
        CustomTextStyleFourth(text: bottomText, isColor: isColor),
      ],
    );
  }
}
