import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/domain/bloc/characters/characters_cubit.dart';
import 'package:rick_and_morty/domain/models/characters.dart';
import 'package:rick_and_morty/presentation/widgets/widgets.dart';
import 'package:rick_and_morty/router.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _onNavigateToDetail({required Character data}) {
      Navigator.pushNamed(context, ScreenPaths.detail,
          arguments: {'type': 'ch', 'data': data});
    }

    return Scaffold(
      body: BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => Container(),
            loaded: (data) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverList.separated(
                        itemCount: data.results!.length,
                        itemBuilder: (_, index) {
                          final Character _data = data.results![index];

                          final String name = _data.name ?? 'No name Found';
                          final String status = _data.status ?? 'Unknown';
                          final String image = _data.image!;

                          return CustomCard(
                            onTap: () => _onNavigateToDetail(data: _data),
                            index: index,
                            name: name,
                            image: image,
                            description: status,
                            type: 'ch',
                          );
                        },
                        separatorBuilder: (_, __) => const SizedBox(
                              height: 12,
                            ))
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
