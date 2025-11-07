import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HospitalityCarousel extends StatefulWidget {
  const HospitalityCarousel({super.key, required this.media});
  final List<String> media;

  @override
  State<HospitalityCarousel> createState() => _HospitalityCarouselState();
}

class _HospitalityCarouselState extends State<HospitalityCarousel> {
  int currentPage = 0;
  final PageController _pageController = PageController();
  final int itemsPerPageSmall = 3;
  final int itemsPerPageLarge = 7;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 700;
    int itemsPerPage = isLargeScreen ? itemsPerPageLarge : itemsPerPageSmall;

    int totalPages = (widget.media.length / itemsPerPage).ceil();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            SizedBox(
              width: screenWidth,
              height: 95,
              child: PageView.builder(
                controller: _pageController,
                itemCount: totalPages,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (context, pageIndex) {
                  List<String> currentmedia = widget.media
                      .skip(pageIndex * itemsPerPage)
                      .take(itemsPerPage)
                      .toList();

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: currentmedia.map((entry) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: CachedNetworkImage(
                            placeholder: (context, url) => const Text(
                                  'Loading\nassets...',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 168, 0, 0),
                                  ),
                                ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            imageUrl: entry),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
            Positioned(
              top: 25,
              left: 5,
              child: Container(
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.5),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: IconButton(
                  iconSize: 23,
                  color: Colors.black,
                  icon: const Icon(Ionicons.chevron_back),
                  onPressed: currentPage > 0
                      ? () {
                          _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                        }
                      : null,
                ),
              ),
            ),
            Positioned(
              top: 25,
              right: 5,
              child: Container(
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.5),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: IconButton(
                  iconSize: 23,
                  color: Colors.black,
                  icon: const Icon(Ionicons.chevron_forward),
                  onPressed: currentPage < totalPages - 1
                      ? () {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                        }
                      : null,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
