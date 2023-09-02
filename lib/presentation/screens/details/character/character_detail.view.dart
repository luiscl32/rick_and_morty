import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';
import 'package:transparent_image/transparent_image.dart';

class CharacterDetailView extends StatelessWidget {
  const CharacterDetailView({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final TextTheme _text = Theme.of(context).textTheme;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: index,
                child: SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: FadeInImage.memoryNetwork(
                      fit: BoxFit.cover,
                      placeholder: kTransparentImage,
                      image:
                          "https://rickandmortyapi.com/api/character/avatar/2.jpeg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: _info(text: _text),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _info extends StatelessWidget {
  const _info({
    super.key,
    required TextTheme text,
  }) : _text = text;

  final TextTheme _text;

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
            style: _text.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        _Subtitle(
          subTitle: 'Last know location:',
          text: _text,
        ),
        _description(description: 'location', text: _text),
        const SizedBox(
          height: 12,
        ),
        _Subtitle(
          subTitle: 'Status:',
          text: _text,
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
              style: _text.bodyLarge,
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        _Subtitle(
          subTitle: 'Gender:',
          text: _text,
        ),
        _description(text: _text, description: 'Male'),
        const SizedBox(
          height: 12,
        ),
        _Subtitle(
          subTitle: 'Episodes:',
          text: _text,
        ),
        _description(text: _text, description: 'adasdadgad')
      ],
    );
  }
}

class _description extends StatelessWidget {
  const _description({
    super.key,
    required TextTheme text,
    required this.description,
  }) : _text = text;

  final TextTheme _text;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: _text.labelLarge,
    );
  }
}

class _Subtitle extends StatelessWidget {
  const _Subtitle({super.key, required TextTheme text, required this.subTitle})
      : _text = text;

  final TextTheme _text;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: _text.titleMedium!.copyWith(fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    );
  }
}
