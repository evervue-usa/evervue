import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key, required this.imagePaths});
  final List<String> imagePaths;

  @override
  State<ImageCarousel> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<ImageCarousel> {
  int activeIndex = 0;

  CarouselSliderController controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
            carouselController: controller,
            items: widget.imagePaths
                .map((image) => SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Image.asset(
                          image,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            )),
        Positioned(bottom: 10, child: buildIndicator())
      ],
    ));
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: widget.imagePaths.length,
        effect: const SlideEffect(
          spacing: 5,
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: Colors.white,
        ),
      );
}
