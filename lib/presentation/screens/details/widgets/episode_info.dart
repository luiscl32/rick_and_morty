import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/details/widgets/detail_widgets.dart';

class EpisodeInfo extends StatelessWidget {
  const EpisodeInfo({super.key});

  @override
  Widget build(BuildContext context) {
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
            'Name of character',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Subtitle(subTitle: 'Episode'),
        Description(description: 'S0123'),
        const SizedBox(
          height: 12,
        ),
        Subtitle(subTitle: 'Air date'),
        Description(description: 'C-137'),
        const SizedBox(
          height: 12,
        ),
        Subtitle(subTitle: 'Characters')
      ],
    );
  }
}
