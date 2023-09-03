import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';

class MenuItem {
  final String type;
  final String value;

  MenuItem({required this.type, required this.value});
}

class FilterButton extends StatelessWidget {
  const FilterButton({super.key, required this.type, required this.onFilter});

  final String type;
  final Function({required String search, required String filterType}) onFilter;

  @override
  Widget build(BuildContext context) {
    List<PopupMenuItem<MenuItem>> onGetFilter() {
      switch (type) {
        case 'ch':
          return [
            PopupMenuItem(
              value: MenuItem(type: 'status', value: 'Alive'),
              child: const Text('Alive'),
            ),
            PopupMenuItem(
              value: MenuItem(type: 'status', value: 'Dead'),
              child: const Text('Dead'),
            ),
            PopupMenuItem(
              value: MenuItem(type: 'gender', value: 'Male'),
              child: const Text('Male'),
            ),
            PopupMenuItem(
              value: MenuItem(type: 'gender', value: 'Female'),
              child: const Text('Female'),
            ),
          ];
        case 'loc':
          return [
            PopupMenuItem(
              value: MenuItem(type: 'type', value: 'Cluster'),
              child: const Text('Cluster'),
            ),
            PopupMenuItem(
              value: MenuItem(type: 'type', value: 'Planet'),
              child: const Text('Planet'),
            ),
            PopupMenuItem(
              value: MenuItem(type: 'type', value: 'Microverse'),
              child: const Text('Microverse'),
            ),
            PopupMenuItem(
              value: MenuItem(type: 'type', value: 'Tv'),
              child: const Text('Alive'),
            ),
          ];
        case 'ep':
          return [
            PopupMenuItem(
              value: MenuItem(type: 'episode', value: ''),
              child: const Text('No filters here'),
            ),
          ];

        default:
          return [];
      }
    }

    return PopupMenuButton(
      color: const Color(ColorPallete.primary),
      icon: const Icon(
        Icons.filter_alt,
        color: Color(ColorPallete.subTitle),
      ),
      onSelected: (value) => onFilter(
        filterType: value.type,
        search: value.value,
      ),
      itemBuilder: (context) => onGetFilter(),
    );
  }
}
