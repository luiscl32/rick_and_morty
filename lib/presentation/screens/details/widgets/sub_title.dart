import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({
    super.key,
    required this.subTitle,
  });

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Text(
      subTitle,
      style: text.titleMedium!.copyWith(fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    );
  }
}
