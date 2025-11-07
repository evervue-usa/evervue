import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key, required this.imagePaths});
  final List<String> imagePaths;

  @override
  State<BannerCarousel> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<BannerCarousel> {
  int activeIndex = 0;

  CarouselSliderController controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
            carouselController: controller,
            items: widget.imagePaths
                .map((image) => SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: CachedNetworkImage(
                          placeholder: (context, url) => const Text(
                            'Loading assets...',
                            style: TextStyle(
                              color: Color.fromARGB(255, 168, 0, 0),
                              fontSize: 16,
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl: image,
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
              aspectRatio: 1.71 / 1,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            )),
        Positioned(bottom: 10, child: buildIndicator())
      ],
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: widget.imagePaths.length,
        effect: const SlideEffect(
          spacing: 5,
          dotWidth: 8,
          dotHeight: 8,
          activeDotColor: Colors.white,
        ),
      );
}
