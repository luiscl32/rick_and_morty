import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/bloc/characters/characters_cubit.dart';
import 'package:rick_and_morty/presentation/screens/characters/characters.view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharactersCubit()..fetchCharacters(),
      child: const CharactersView(),
    );
  }
}
