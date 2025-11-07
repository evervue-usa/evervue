import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:video_player/video_player.dart';

class ImageCarouselAlign extends StatefulWidget {
  const ImageCarouselAlign(
      {super.key,
      required this.imagePaths,
      required Alignment alignment,
      required BoxFit fit});
  final List<String> imagePaths;

  @override
  State<ImageCarouselAlign> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<ImageCarouselAlign> {
  int activeIndex = 0;
  final List<VideoPlayerController?> _videoControllers = [];

  @override
  void initState() {
    super.initState();
    _initializeVideoControllers();
  }

  void _initializeVideoControllers() {
    for (var mediaPath in widget.imagePaths) {
      if (mediaPath.endsWith('.mp4')) {
        _videoControllers.add(VideoPlayerController.asset(mediaPath)
          ..initialize().then((_) {
            setState(() {});
          }));
      } else {
        _videoControllers.add(null);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        FutureBuilder<double>(
          future: _getAspectRatio(widget.imagePaths[activeIndex]),
          builder: (context, snapshot) {
            double aspectRatio = snapshot.hasData ? snapshot.data! : 1.71;

            return CarouselSlider(
              items: widget.imagePaths.map((media) {
                if (media.endsWith('.mp4')) {
                  final videoController =
                      _videoControllers[widget.imagePaths.indexOf(media)];
                  if (videoController != null &&
                      videoController.value.isInitialized) {
                    return AspectRatio(
                      aspectRatio: videoController.value.aspectRatio,
                      child: VideoPlayer(videoController),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                } else {
                  return SizedBox(
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
                        imageUrl: media,
                        memCacheWidth: screenWidth.toInt(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }
              }).toList(),
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                //aspectRatio: aspectRatio,
                aspectRatio: aspectRatio,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                    _playCurrentVideo();
                  });
                },
              ),
            );
          },
        ),
        Positioned(bottom: 10, child: buildIndicator())
      ],
    );
  }

  void _playCurrentVideo() {
    final controller = _videoControllers[activeIndex];
    if (controller != null && controller.value.isInitialized) {
      controller.setVolume(0);
      controller.setLooping(true);
      controller.play();
    }
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: widget.imagePaths.length,
        effect: const SlideEffect(
          spacing: 10,
          dotWidth: 8,
          dotHeight: 8,
          activeDotColor: Colors.red,
          dotColor: Colors.white,
          strokeWidth: 2,
        ),
      );

  Future<double> _getAspectRatio(String mediaPath) async {
    if (mediaPath.endsWith('.mp4')) {
      final VideoPlayerController videoController =
          _videoControllers[widget.imagePaths.indexOf(mediaPath)]!;
      return videoController.value.aspectRatio;
    } else {
      final ImageProvider imageProvider = CachedNetworkImageProvider(mediaPath);
      final Completer<ImageInfo> completer = Completer<ImageInfo>();

      imageProvider.resolve(const ImageConfiguration()).addListener(
        ImageStreamListener((ImageInfo info, bool _) {
          completer.complete(info);
        }),
      );

      final ImageInfo imageInfo = await completer.future;
      final double width = imageInfo.image.width.toDouble();
      final double height = imageInfo.image.height.toDouble();
      return width / height;
    }
  }
}
