import 'package:flutter/material.dart';
import 'package:stream_app/theme/cor.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Material(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(50),
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {},
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: const Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  Positioned(
                    top: -2,
                    right: -5,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 3,
                      child: Container(),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
