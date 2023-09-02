import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/widgets/widgets.dart';

class LocationsView extends StatelessWidget {
  const LocationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomList(
        type: 'loc',
      ),
    );
  }
}
