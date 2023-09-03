import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.filter_alt,
        color: Color(ColorPallete.title),
      ),
      itemBuilder: (context) => [],
    );
  }
}
