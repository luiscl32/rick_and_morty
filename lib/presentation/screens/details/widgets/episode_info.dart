import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/models/episodes.dart';
import 'package:rick_and_morty/presentation/screens/details/widgets/detail_widgets.dart';

class EpisodeInfo extends StatelessWidget {
  const EpisodeInfo({
    super.key,
    required this.data,
  });

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    final _data = data as Episode;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            _data.name!,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(subTitle: 'Episode'),
        Description(description: _data.episode!),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(subTitle: 'Air date'),
        Description(description: _data.airDate!),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(subTitle: 'Characters in this episode'),
        Description(description: '${_data.airDate!.characters}'),
      ],
    );
  }
}
