import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/screens.dart';
import 'package:rick_and_morty/presentation/screens/dashboard/widgets/widgets.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int currentIndex = 0;

  static const List<Widget> screens = [
    CharactersPage(),
    LocationsPage(),
    EpisodesPage(),
  ];

  void onChangeOption({required int index}) {
    setState(() {
      currentIndex = index;
    });
  }

  String _getTitle({required int currentIndex}) {
    switch (currentIndex) {
      case 0:
        return 'Characters';
      case 1:
        return 'Locations';
      case 2:
        return 'Episodes';
      default:
        return 'Rick & Morty';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(ColorPallete.secondary),
        title: Text(
          _getTitle(currentIndex: currentIndex),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: screens.elementAt(currentIndex),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => onChangeOption(index: index!),
      ),
    );
  }
}
