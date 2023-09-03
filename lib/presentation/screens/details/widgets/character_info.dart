import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';
import 'package:rick_and_morty/presentation/screens/details/widgets/detail_widgets.dart';

class CharacterInfo extends StatelessWidget {
  const CharacterInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

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
            style: text.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(
          subTitle: 'Last know location:',
        ),
        const Description(description: 'location'),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(
          subTitle: 'Status:',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: const Color(ColorPallete.alive),
                  borderRadius: BorderRadius.circular(100)),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'alive - human',
              style: text.bodyLarge,
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(
          subTitle: 'Gender:',
        ),
        Description(description: 'Male'),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(
          subTitle: 'Episodes:',
        ),
        Description(description: 'adasdadgad')
      ],
    );
  }
}
