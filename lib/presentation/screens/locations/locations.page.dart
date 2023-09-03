import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/domain/bloc/locations/locations_cubit.dart';
import 'package:rick_and_morty/presentation/screens/locations/locations.view.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationsCubit()..fetchLocations(),
      child: const LocationsView(),
    );
  }
}
