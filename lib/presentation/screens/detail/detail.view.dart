import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  const DetailView({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Hero(
              tag: index,
              child: const SizedBox(
                width: double.infinity,
                height: 200,
                child: Center(
                  child: Text('image here'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text(
                      'Nulla aliquip ut minim anim aute deserunt aliqua elit voluptate. Ut laboris non dolore et sit do sint velit occaecat in. Consectetur consectetur laboris dolore voluptate laborum fugiat ex veniam. Deserunt id est officia deserunt eiusmod ipsum ex dolore nisi quis id eiusmod aliqua enim. Proident adipisicing pariatur duis duis incididunt laboris magna irure deserunt. Nulla eu voluptate qui do sunt tempor eiusmod pariatur enim tempor reprehenderit non.'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
