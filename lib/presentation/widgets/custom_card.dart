import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';

import 'package:transparent_image/transparent_image.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.onTap,
      required this.index,
      required this.type,
      required this.name,
      required this.description,
      required this.image});

  final VoidCallback onTap;
  final int index;
  final String type;
  final String name;
  final String description;
  final String? image;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return GestureDetector(
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
                  index: name,
                  image: image!,
                )
              else
                _icon(type: type),
              const SizedBox(
                width: 12,
              ),
              _Description(
                text: text,
                type: type,
                name: name,
                description: description,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _icon extends StatelessWidget {
  const _icon({
    super.key,
    required this.type,
  });

  final String? type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Center(
        child: Icon(
          type == 'loc' ? Icons.location_on : Icons.tv,
          size: 32,
          color: const Color(ColorPallete.title),
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    required this.text,
    required this.name,
    required this.description,
    required this.type,
  });

  final TextTheme text;
  final String name;
  final String description;
  final String type;

  String _getTextByType() {
    switch (type) {
      case 'ch':
        return 'Status:';
      case 'loc':
        return 'Type:';
      case 'ep':
        return 'Number:';
      default:
        return '';
    }
  }

  Color _getColorByStatus() {
    switch (description) {
      case 'Alive':
        return const Color(ColorPallete.alive);

      case 'Dead':
        return const Color(ColorPallete.dead);

      default:
        return const Color(ColorPallete.title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Text(
              name,
              style: text.titleLarge,
              maxLines: 2,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            _getTextByType(),
            style: text.bodyMedium,
          ),
          if (type == 'ch')
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: _getColorByStatus(),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  description,
                  style: text.bodyMedium!.copyWith(
                    color: const Color(ColorPallete.title),
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            )
          else
            Text(
              description,
              style: text.bodyMedium!.copyWith(
                color: const Color(ColorPallete.title),
                fontWeight: FontWeight.w300,
              ),
            ),
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({required this.index, required this.image});

  final String index;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: index,
      child: SizedBox(
        width: 120,
        height: 120,
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
