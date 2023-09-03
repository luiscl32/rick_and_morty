import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: FadeInImage.memoryNetwork(
          fit: BoxFit.cover,
          placeholder: kTransparentImage,
          image: "https://rickandmortyapi.com/api/character/avatar/2.jpeg"),
    );
  }
}
