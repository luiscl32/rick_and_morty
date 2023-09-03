import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Text(
      description,
      style: text.labelLarge,
    );
  }
}
