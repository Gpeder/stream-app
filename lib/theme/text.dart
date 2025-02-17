import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final double? letter;
  const CustomText(
      {super.key,
      required this.text,
      required this.color,
      required this.fontSize,
      this.fontWeight,
      this.decoration,
      this.textAlign,
      required this.letter});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          decoration: decoration,
          letterSpacing: letter),
      textAlign: textAlign,
    );
  }
}
