import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  final Function(int?) onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: const Color(ColorPallete.secondary),
      iconSize: 32,
      selectedFontSize: 14,
      unselectedItemColor: const Color(ColorPallete.subTitle),
      selectedItemColor: const Color(ColorPallete.title),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2), label: 'Characters'),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on), label: 'locations'),
        BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded), label: 'episodes')
      ],
    );
  }
}
