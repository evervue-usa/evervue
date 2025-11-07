import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

class LogoCarousel extends StatefulWidget {
  const LogoCarousel({super.key, required this.contents});
  final List<Map<String, String>> contents;

  @override
  State<LogoCarousel> createState() => _LogoCarouselState();
}

class _LogoCarouselState extends State<LogoCarousel> {
  int currentPage = 0;
  final PageController _pageController = PageController();
  final int itemsPerPageSmall = 4;
  final int itemsPerPageLarge = 7;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 700;
    int itemsPerPage = isLargeScreen ? itemsPerPageLarge : itemsPerPageSmall;

    int totalPages = (widget.contents.length / itemsPerPage).ceil();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            SizedBox(
              width: isLargeScreen ? 700 : screenWidth,
              height: 100, // Set a fixed height for the carousel
              child: PageView.builder(
                controller: _pageController,
                itemCount: totalPages,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (context, pageIndex) {
                  List<Map<String, String>> currentContents = widget.contents
                      .skip(pageIndex * itemsPerPage)
                      .take(itemsPerPage)
                      .toList();

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: currentContents.map((entry) {
                      return InkWell(
                        onTap: () => _launchUrl(entry['link']!),
                        child: Container(
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(blurRadius: 5, color: Color(0x80000000))
                          ]),
                          width: 75,
                          margin: const EdgeInsets.all(5),
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
                              imageUrl: entry['image']!),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
            Positioned(
              top: 35,
              left: 3,
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
              top: 35,
              right: 3,
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
        buildIndicator()
      ],
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: currentPage,
        count: (widget.contents.length /
                (MediaQuery.of(context).size.width > 700
                    ? itemsPerPageLarge
                    : itemsPerPageSmall))
            .ceil(),
        effect: const SlideEffect(
          spacing: 10,
          dotWidth: 8,
          dotHeight: 8,
          activeDotColor: Color(0xffB32927),
          dotColor: Colors.grey,
          strokeWidth: 2,
        ),
      );

  Future<void> _launchUrl(String webUrl) async {
    final url = 'https://$webUrl';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
