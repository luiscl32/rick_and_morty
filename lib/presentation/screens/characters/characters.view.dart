import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/domain/bloc/characters/characters_cubit.dart';
import 'package:rick_and_morty/domain/models/characters.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';
import 'package:rick_and_morty/presentation/widgets/filter_btn.dart';
import 'package:rick_and_morty/presentation/widgets/widgets.dart';
import 'package:rick_and_morty/router.dart';

class CharactersView extends StatefulWidget {
  const CharactersView({Key? key}) : super(key: key);

  @override
  State<CharactersView> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  int page = 1;
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        setState(() {
          page = page + 1;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void _onNavigateToDetail({required Character data}) {
      Navigator.pushNamed(context, ScreenPaths.detail,
          arguments: {'type': 'ch', 'data': data});
    }

    void _onSearch({required String search}) {
      context.read<CharactersCubit>().searchCharacters(search: search);
    }

    void _onFilter({required String search, required String filterType}) {
      context
          .read<CharactersCubit>()
          .filterCharacters(filterType: filterType, search: search);
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(ColorPallete.primary),
        title: CustomSearch(onSearch: (search) => _onSearch(search: search)),
      ),
      body: BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            orElse: () => Container(),
            loaded: (data) {
              return Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: CustomScrollView(
                  controller: controller,
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverAppBar(
                      backgroundColor: const Color(ColorPallete.primary),
                      flexibleSpace: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text('Filter by'),
                          FilterButton(
                            type: 'ch',
                            onFilter: (
                                    {required filterType, required search}) =>
                                _onFilter(
                                    filterType: filterType, search: search),
                          ),
                        ],
                      ),
                    ),
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
                      ),
                    ),
                    const ListLoader()
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
