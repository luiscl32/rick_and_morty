import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key, required this.onSearch});

  final Function(String search) onSearch;

  @override
  Widget build(BuildContext context) {
    TextEditingController ctrl = TextEditingController();

    return Container(
      decoration: BoxDecoration(
        color: const Color(ColorPallete.secondary),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 48,
      child: TextField(
        controller: ctrl,
        onChanged: (value) {
          onSearch(value);
        },
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Color(ColorPallete.subTitle)),
          suffixIcon: Icon(
            Icons.search,
            color: Color(ColorPallete.subTitle),
          ),
          hintText: 'Search',
        ),
      ),
    );
  }
}
