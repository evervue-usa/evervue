import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QaioImageAndTextCarousel extends StatefulWidget {
  const QaioImageAndTextCarousel({
    super.key,
    required this.imagePaths,
    required this.titles,
    required this.descriptions,
  });

  final List<String> imagePaths;
  final List<String> titles;
  final List<String> descriptions;

  @override
  State<QaioImageAndTextCarousel> createState() =>
      _QaioImageAndTextCarouselState();
}

class _QaioImageAndTextCarouselState extends State<QaioImageAndTextCarousel> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CarouselSlider(
                items: widget.imagePaths.map((media) {
                  return SizedBox(
                    width: screenWidth,
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
                        imageUrl: media,
                        memCacheWidth: screenWidth.toInt(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 4),
                  aspectRatio: 0.64 / 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
              ),
              Positioned(bottom: 10, child: buildIndicator()),
            ],
          ),
          const SizedBox(height: 20),
          _buildText(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildText() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      child: Container(
        key: ValueKey<int>(activeIndex),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsetsDirectional.only(top: 10),
              child: Text(
                widget.titles[activeIndex],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              widget.descriptions[activeIndex],
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: widget.imagePaths.length,
        effect: const SlideEffect(
          spacing: 10,
          dotWidth: 8,
          dotHeight: 8,
          activeDotColor: Color(0xffB32927),
          dotColor: Colors.white,
          strokeWidth: 2,
        ),
      );
}
