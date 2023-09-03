import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/details/widgets/detail_widgets.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';

class DetailView extends StatelessWidget {
  const DetailView({
    Key? key,
    required this.index,
    required this.type,
  }) : super(key: key);

  final int index;
  final String type;

  @override
  Widget build(BuildContext context) {
    Widget _getScreenByType() {
      switch (type) {
        case 'ch':
          return const CharacterInfo();
        case 'loc':
          return const LocationInfo();
        case 'ep':
          return const EpisodeInfo();
        default:
          return Container();
      }
    }

    void onGoBack() {
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: onGoBack, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (type == 'ch')
                Hero(
                  tag: index,
                  child: const ImageHeader(),
                )
              else
                IconHeader(type: type),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: _getScreenByType(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconHeader extends StatelessWidget {
  const IconHeader({
    super.key,
    required this.type,
  });

  final String type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Center(
        child: Icon(
          type == 'loc' ? Icons.location_on : Icons.tv,
          size: 64,
          color: const Color(
            ColorPallete.title,
          ),
        ),
      ),
    );
  }
}
