import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/models/characters.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';
import 'package:rick_and_morty/presentation/screens/details/widgets/detail_widgets.dart';

class CharacterInfo extends StatelessWidget {
  const CharacterInfo({
    super.key,
    required this.data,
  });

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    final _data = data as Character;

    Color getStatus() {
      switch (_data.status) {
        case 'Alive':
          return const Color(ColorPallete.alive);
        case 'Dead':
          return const Color(ColorPallete.dead);
        default:
          return const Color(ColorPallete.title);
      }
    }

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
            style: text.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(
          subTitle: 'Location',
        ),
        Description(description: _data.location!.name!),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(
          subTitle: 'Status',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: getStatus(), borderRadius: BorderRadius.circular(100)),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '${_data.status} - ${_data.species}',
              style: text.bodyLarge,
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(
          subTitle: 'Gender',
        ),
        Description(description: _data.gender!),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(
          subTitle: 'Episodes where appears',
        ),
        Description(description: '${_data.episode!.length}')
      ],
    );
  }
}
