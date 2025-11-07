import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MirrorVueBanner extends StatefulWidget {
  const MirrorVueBanner({super.key, required this.imagePaths});
  final List<String> imagePaths;

  @override
  State<MirrorVueBanner> createState() => _MirrorVueBannerState();
}

class _MirrorVueBannerState extends State<MirrorVueBanner> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: CarouselSlider(
        items: widget.imagePaths.map((media) {
          return SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: CachedNetworkImage(
              placeholder: (context, url) => const Text(
                'Loading assets...',
                style: TextStyle(
                  color: Color.fromARGB(255, 168, 0, 0),
                  fontSize: 16,
                ),
              ),
              imageUrl: media,
              fit: BoxFit.cover,
              width: screenWidth,
              height: screenHeight,
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: screenHeight,
          viewportFraction: 1.0,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          onPageChanged: (index, reason) {
            setState(() {
              activeIndex = index;
            });
          },
        ),
      ),
    );
  }
}
