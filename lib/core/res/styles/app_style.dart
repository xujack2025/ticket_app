import 'package:flutter/material.dart';

class AppStyle {
  static Color primary = const Color(0xFF687DAF);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = Color(0xFFEEEDF2);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor,
  );
  
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle headLineStyle3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
}
