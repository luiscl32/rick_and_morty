import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key, required this.onSearch});

  final Function(String search) onSearch;

  @override
  Widget build(BuildContext context) {
    TextEditingController ctrl = TextEditingController();

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        color: const Color(ColorPallete.title),
        height: 48,
        child: TextField(
          controller: ctrl,
          onChanged: (value) {
            onSearch(value);
          },
          decoration: const InputDecoration(
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.search,
              color: Color(ColorPallete.primary),
            ),
            hintText: 'Search',
          ),
        ),
      ),
    );
  }
}
