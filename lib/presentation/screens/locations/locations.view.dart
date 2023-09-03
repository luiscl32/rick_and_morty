import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_and_morty/domain/bloc/locations/locations_cubit.dart';
import 'package:rick_and_morty/domain/models/Locations.dart' as loc;
import 'package:rick_and_morty/domain/models/locations.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';
import 'package:rick_and_morty/presentation/widgets/widgets.dart';
import 'package:rick_and_morty/router.dart';

class LocationsView extends StatelessWidget {
  const LocationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _onNavigateToDetail({required Location data}) {
      Navigator.pushNamed(context, ScreenPaths.detail,
          arguments: {'type': 'loc', 'data': data});
    }

    void _onSearch({required String search}) {
      context.read<LocationsCubit>().searchLocations(search: search);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(ColorPallete.primary),
        title: CustomSearch(
          onSearch: (search) => _onSearch(search: search),
        ),
      ),
      body: BlocBuilder<LocationsCubit, LocationsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (data) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverList.separated(
                      itemCount: data.results!.length,
                      itemBuilder: (_, index) {
                        final _data = data.results![index];

                        final String name = _data.name ?? 'No name Found';
                        final String status = _data.dimension ?? 'unknown';

                        return CustomCard(
                          onTap: () => _onNavigateToDetail(data: _data),
                          index: index,
                          name: name,
                          image: null,
                          description: status,
                          type: 'loc',
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(
                            height: 12,
                          ))
                ],
              ),
            ),
            orElse: () => Container(),
          );
        },
      ),
    );
  }
}
