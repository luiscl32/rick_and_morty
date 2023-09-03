import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/domain/bloc/episodes/episodes_cubit.dart';
import 'package:rick_and_morty/domain/models/episodes.dart';
import 'package:rick_and_morty/presentation/widgets/widgets.dart';
import 'package:rick_and_morty/router.dart';

class EpisodesView extends StatelessWidget {
  const EpisodesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _onNavigateToDetail({required Episode data}) {
      Navigator.pushNamed(context, ScreenPaths.detail,
          arguments: {'type': 'ep', 'data': data});
    }

    return Scaffold(body: BlocBuilder<EpisodesCubit, EpisodesState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          loaded: (data) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverList.separated(
                    itemCount: data.results!.length,
                    itemBuilder: (_, index) {
                      final Episode _data = data.results![index];

                      final String name = _data.name ?? 'No name Found';
                      final String episodeNumber = _data.episode ?? 'unknown';

                      return CustomCard(
                        onTap: () => _onNavigateToDetail(data: _data),
                        index: index,
                        name: name,
                        image: null,
                        description: episodeNumber,
                        type: 'ep',
                      );
                    },
                    separatorBuilder: (_, __) => const SizedBox(
                          height: 12,
                        ))
              ],
            ),
          ),
        );
      },
    ));
  }
}
