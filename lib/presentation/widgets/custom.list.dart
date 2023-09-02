import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/widgets/card.dart';
import 'package:rick_and_morty/router.dart';

class CustomList extends StatelessWidget {
  const CustomList({
    super.key,
    required this.type,
  });

  final String type;

  @override
  Widget build(BuildContext context) {
    void _onNavigateToDetail() {
      Navigator.pushNamed(context, ScreenPaths.detail);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList.separated(
              itemBuilder: (context, index) => CustomCard(
                    index: index,
                    onTap: _onNavigateToDetail,
                    type: type,
                  ),
              separatorBuilder: (_, __) => const SizedBox(
                    height: 12,
                  ))
        ],
      ),
    );
  }
}
