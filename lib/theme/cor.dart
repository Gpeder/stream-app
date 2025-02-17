import 'package:flutter/material.dart';

class AppColors {
  static const Color black = Color(0xff0f0f17);
  static const Color primary = Color(0xff6aff9b);
  static const Color grey = Color(0xffa1a1a1);
  static const Color white = Color(0xffffffff);
  static const Color offWhite = Color(0xfff5f5f5);


  static LinearGradient customGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff0f0f17),
      Color(0xff2a2939).withOpacity(0.8),
    ],
  );
}
