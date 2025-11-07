// ignore_for_file: unused_element

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageAndTextCarousel extends StatefulWidget {
  const ImageAndTextCarousel({
    super.key,
    required this.imagePaths,
    required this.titles,
    required this.descriptions,
    this.buttons,
  });

  final List<String> imagePaths;
  final List<String> titles;
  final List<String> descriptions;
  final List<List<Widget>>? buttons;

  @override
  State<ImageAndTextCarousel> createState() => _ImageAndTextCarouselState();
}

class _ImageAndTextCarouselState extends State<ImageAndTextCarousel> {
  int activeIndex = 0;
  final List<VideoPlayerController?> _videoControllers = [];

  @override
  void initState() {
    super.initState();
    _initializeVideoControllers();
  }

  @override
  void dispose() {
    for (var controller in _videoControllers) {
      controller?.dispose();
    }
    super.dispose();
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
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
                            width: double.infinity,
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
            Positioned(bottom: 10, child: buildIndicator()),
          ],
        ),
        const SizedBox(height: 20),
        _buildText(),
        const SizedBox(height: 10),
      ],
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
        margin: const EdgeInsets.symmetric(horizontal: 20),
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 50,
              height: 2,
              color: const Color(0xffc99e62),
            ),
            Text(
              widget.descriptions[activeIndex],
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            if (widget.buttons != null && widget.buttons!.isNotEmpty)
              ...widget.buttons![activeIndex],
          ],
        ),
      ),
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
          activeDotColor: Colors.black,
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

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
