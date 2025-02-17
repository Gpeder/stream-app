import 'package:flutter/material.dart';
import 'package:stream_app/theme/cor.dart';
import 'package:stream_app/theme/text.dart';

class TitleCategorie extends StatelessWidget {
  final String title;
  const TitleCategorie({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text: title, color: AppColors.white, fontSize: 16, letter: 1.5, fontWeight: FontWeight.bold),
        Row(
        mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(radius: 3, backgroundColor: AppColors.primary),
            SizedBox(width: 5),
            CircleAvatar(radius: 3, backgroundColor: AppColors.grey),
            SizedBox(width: 5),
            CircleAvatar(radius: 3, backgroundColor: AppColors.grey),
          ],
        )
      ],
    );
  }
}