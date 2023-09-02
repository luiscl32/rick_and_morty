import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';

import 'package:transparent_image/transparent_image.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.onTap,
    required this.index,
    this.type = 'ch',
  });

  final VoidCallback onTap;
  final int index;
  final String? type;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: double.infinity,
            height: 120,
            color: const Color(ColorPallete.secondary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (type == 'ch')
                  _Image(
                    index: index,
                  ),
                if (type == 'loc' || type == 'ep')
                  SizedBox(
                    width: 100,
                    height: 120,
                    child: Center(
                      child: Icon(
                        type == 'loc' ? Icons.location_on : Icons.tv,
                        size: 32,
                        color: const Color(ColorPallete.title),
                      ),
                    ),
                  ),
                const SizedBox(
                  width: 12,
                ),
                _Description(text: text)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    super.key,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rick Sanchez',
            style: text.headlineSmall,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'alive',
            style: text.bodyMedium!.copyWith(
              color: const Color(ColorPallete.alive),
              fontWeight: FontWeight.w800,
            ),
          )
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: index,
      child: SizedBox(
        width: 100,
        height: 120,
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: 'https://rickandmortyapi.com/api/character/avatar/2.jpeg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
