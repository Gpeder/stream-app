import 'package:flutter/material.dart';
import 'package:stream_app/theme/cor.dart';
import 'package:stream_app/theme/text.dart';

class DrawerBar extends StatelessWidget {
  const DrawerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: AppColors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primary,
              ),
              child: CustomText(text: 'Header', color: AppColors.black, fontSize: 16, letter: null),
            ),
            ListTile(
              title: CustomText(text: 'item 1', color: AppColors.white, fontSize: 16, letter: null),
              onTap: () {},
            ),
            ListTile(
              title: CustomText(text: 'item 2', color: AppColors.white, fontSize: 16, letter: null),
              onTap: () {},
            ),
          ],
        ),
      );
  }
}