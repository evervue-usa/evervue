import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselDemo extends StatefulWidget {
  final List<String> imageAssetPaths;

  const CarouselDemo({super.key, required this.imageAssetPaths});

  @override
  // ignore: library_private_types_in_public_api
  _CarouselDemoState createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double imageAspectRatio = 12 / 9; // Aspect ratio of the images

    double calculatedHeight = screenWidth / imageAspectRatio;

    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: screenWidth / calculatedHeight,
                enlargeCenterPage: false,
                viewportFraction: 1.0, // Fill the entire viewport
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: widget.imageAssetPaths.map((path) {
                return Builder(
                  builder: (BuildContext context) {
                    return SizedBox(
                      width: screenWidth,
                      child: Image.asset(
                        path,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Positioned(
              bottom: 20, // Adjust position from the bottom
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.imageAssetPaths.map((path) {
                  int index = widget.imageAssetPaths.indexOf(path);
                  return Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? Colors.white // Active dot color
                          : Colors.grey, // Inactive dot color
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
