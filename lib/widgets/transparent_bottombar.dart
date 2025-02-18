import 'package:flutter/material.dart';
import 'package:stream_app/theme/cor.dart';

class TransparentBottomBar extends StatefulWidget {
  const TransparentBottomBar({super.key});

  @override
  State<TransparentBottomBar> createState() => _TransparentBottomBarState();
}

class _TransparentBottomBarState extends State<TransparentBottomBar> {
  int _selectedIndex = 0;

  void _onIconPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, AppColors.black],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => _onIconPressed(0),
            icon: Icon(
              Icons.home,
              size: 30,
              color: _selectedIndex == 0 ? AppColors.primary : Colors.white,
            ),
          ),
          IconButton(
            onPressed: () => _onIconPressed(1),
            icon: Icon(
              Icons.search,
              size: 30,
              color: _selectedIndex == 1 ? AppColors.primary : Colors.white,
            ),
          ),
          IconButton(
            onPressed: () => _onIconPressed(2),
            icon: Icon(
              Icons.favorite,
              size: 30,
              color: _selectedIndex == 2 ? AppColors.primary : Colors.white,
            ),
          ),
          IconButton(
            onPressed: () => _onIconPressed(3),
            icon: Icon(
              Icons.settings,
              size: 30,
              color: _selectedIndex == 3 ? AppColors.primary : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}