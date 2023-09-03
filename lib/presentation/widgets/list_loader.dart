import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';

class ListLoader extends StatelessWidget {
  const ListLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SizedBox(
        height: 60,
        child: Center(
          child: CircularProgressIndicator(
            color: Color(ColorPallete.secondary),
          ),
        ),
      ),
    );
  }
}
