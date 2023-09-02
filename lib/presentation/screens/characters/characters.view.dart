import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/widgets/character.card.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
        itemBuilder: (context, index) => const CharacterCard(),
        separatorBuilder: (_, __) => const SizedBox(
          height: 12,
        ),
        itemCount: 10,
      ),
    ));
  }
}
