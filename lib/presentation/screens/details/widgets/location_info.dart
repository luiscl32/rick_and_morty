import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/models/locations.dart';
import 'package:rick_and_morty/presentation/screens/details/widgets/detail_widgets.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({
    super.key,
    required this.data,
  });

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    final _data = data as Location;

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
            _data.name!,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(subTitle: 'Type'),
        Description(description: _data.type!),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(subTitle: 'Dimension'),
        Description(description: _data.dimension!),
        const SizedBox(
          height: 12,
        ),
        const Subtitle(subTitle: 'Total residents'),
        Description(description: '${_data.residents!.length}'),
      ],
    );
  }
}
