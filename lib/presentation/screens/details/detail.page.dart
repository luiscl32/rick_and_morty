import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/details/detail.view.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    final data = args['data'];

    return DetailView(
      index: data.name,
      type: args['type'],
      data: data,
    );
  }
}
