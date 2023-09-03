import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/details/detail.view.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;

    return DetailView(
      index: 1,
      type: args['type'],
    );
  }
}
