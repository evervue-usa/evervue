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
            child: Image.asset(
              media,
              fit: BoxFit.cover,
              width: screenWidth,
              height: screenHeight,
              errorBuilder: (context, error, stackTrace) => const Center(
                child: Icon(Icons.error, color: Colors.red, size: 40),
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: screenHeight,
          viewportFraction: 1.0,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
          scrollPhysics: const NeverScrollableScrollPhysics(), // disable swipe
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
