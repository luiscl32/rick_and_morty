import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/widgets/custom.list.dart';

class EpisodesView extends StatelessWidget {
  const EpisodesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomList(type: 'ep'));
  }
}
