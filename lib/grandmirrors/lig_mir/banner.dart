import 'package:flutter/material.dart';
import 'page_banner.dart';

class LuxPageSample extends StatelessWidget {
  const LuxPageSample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageAssetPaths = [
      'assets/carousel/lux/01.jpg',
      'assets/carousel/lux/02.jpg',
      'assets/carousel/lux/03.jpg',
      'assets/carousel/lux/04.jpg',
      'assets/carousel/lux/05.jpg',
      'assets/carousel/lux/06.jpg',
      'assets/carousel/lux/07.jpg',
      'assets/carousel/lux/08.jpg',
      'assets/carousel/lux/09.jpg',
      'assets/carousel/lux/10.jpg',
      'assets/carousel/lux/11.jpg',
      'assets/carousel/lux/12.jpg',
    ];

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          ImageCarousel(imagePaths: imageAssetPaths),
          Positioned(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton.small(
                backgroundColor: Colors.transparent,
                onPressed: () {},
                child: Image.asset('assets/whatsapp.png'),
              ),
              FloatingActionButton.small(
                  backgroundColor: Colors.transparent, onPressed: () {})
            ],
          ))
        ],
      )),
    );
  }
}
