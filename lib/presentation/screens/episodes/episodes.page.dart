import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/domain/bloc/episodes/episodes_cubit.dart';
import 'package:rick_and_morty/domain/bloc/location/location_cubit.dart';
import 'package:rick_and_morty/domain/bloc/locations/locations_cubit.dart';
import 'package:rick_and_morty/presentation/screens/episodes/episodes.view.dart';

class EpisodesPage extends StatelessWidget {
  const EpisodesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EpisodesCubit()..fetchEpisodes(),
      child: const EpisodesView(),
    );
  }
}
