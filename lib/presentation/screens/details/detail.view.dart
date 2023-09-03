import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/details/widgets/detail_widgets.dart';
import 'package:rick_and_morty/presentation/theme/color_pallete.dart';

class DetailView extends StatelessWidget {
  const DetailView({
    Key? key,
    required this.index,
    required this.type,
    required this.data,
  }) : super(key: key);

  final String index;
  final String type;
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    Widget _getScreenByType() {
      switch (type) {
        case 'ch':
          return CharacterInfo(
            data: data,
          );
        case 'loc':
          return LocationInfo(
            data: data,
          );
        case 'ep':
          return EpisodeInfo(
            data: data,
          );
        default:
          return Container();
      }
    }

    void onGoBack() {
      Navigator.pop(context);
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: onGoBack,
          icon: const Icon(Icons.arrow_back),
          color: const Color(ColorPallete.secondary),
        ),
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
                  child: ImageHeader(image: data.image),
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
