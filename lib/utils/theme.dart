import 'package:flutter/material.dart';

class AppTheme {
  static const Color hightLighted = Color(0xFF386BF6);
  static const Color notHightLighted = Color(0xFF9DB2CE);
  static const Color shadowQR = Color(0x00613eea);

  static const BoxDecoration mainBackGroundDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFFFFFFF), // White color
        Color(0xFF999999), // Gray color
      ],
      stops: [0, 1.0], // Matches the gradient stops you provided
    ),
  );
}
