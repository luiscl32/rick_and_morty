import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/details/character/character_detail.view.dart';

class CharacterDetailPage extends StatelessWidget {
  const CharacterDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CharacterDetailView(
      index: 1,
    );
  }
}
