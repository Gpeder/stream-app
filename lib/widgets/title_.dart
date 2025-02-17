import 'package:flutter/material.dart';
import 'package:stream_app/theme/cor.dart';
import 'package:stream_app/theme/text.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomText(text: 'Your Favorite', color: AppColors.white, fontSize: 30, fontWeight: FontWeight.bold, letter: null,),
        CustomText(text: 'Streams', color: AppColors.primary, fontSize: 30, fontWeight: FontWeight.bold, letter: null,),
      ],
    );
  }
}