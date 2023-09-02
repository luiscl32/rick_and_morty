import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/detail/detail.view.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DetailView(
      index: 1,
    );
  }
}
