import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/widgets/character.card.dart';
import 'package:rick_and_morty/router.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onNavigateToDetail() {
      Navigator.pushNamed(context, ScreenPaths.detail);
    }

    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverList.separated(
                  itemCount: 100,
                  itemBuilder: (context, index) => CharacterCard(
                    index: index,
                    onTap: onNavigateToDetail,
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    height: 12,
                  ),
                ),
              ],
            )));
  }
}
