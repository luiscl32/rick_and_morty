import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/details/widgets/detail_widgets.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
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
        Subtitle(subTitle: 'Dimension'),
        Description(description: 'C-137'),
        const SizedBox(
          height: 12,
        ),
        Subtitle(subTitle: 'Residents')
      ],
    );
  }
}
