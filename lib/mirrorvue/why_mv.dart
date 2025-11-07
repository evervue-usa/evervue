// ignore_for_file: must_be_immutable

import 'package:evervue/templates/video_player.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WhyMVPage extends StatefulWidget {
  const WhyMVPage({super.key});

  @override
  State<WhyMVPage> createState() => _WhyMVPageState();
}

class _WhyMVPageState extends State<WhyMVPage> {
  List plist = [
    'https://www.evervue.com/evervue/assets/12-24-volts.png',
    'assets/mirrorvue/resources/why_mv/real-mirror-tv-glass.mp4',
    'https://www.evervue.com/evervue/assets/rust-proof-tv-mirror-glass.png',
    'assets/mirrorvue/resources/why_mv/tv-sizes-15.6-up-to-100.mp4',
    'https://www.evervue.com/evervue/assets/the-only-oled-tv-mirror.png',
    'assets/mirrorvue/resources/why_mv/made-to-measure.mp4',
    'https://www.evervue.com/evervue/assets/make-in-any-shape.png',
    'https://www.evervue.com/evervue/assets/touchscreen-available.png',
    'https://www.evervue.com/evervue/assets/high-quality-speakers.png',
    'assets/mirrorvue/resources/why_mv/good-wall-mount.mp4',
    'assets/mirrorvue/resources/why_mv/security-film.mp4'
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        constraints: const BoxConstraints(maxWidth: 1000),
                        child: const Text(
                          'Why MirrorVue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Wrap(
                        children: plist.map((i) {
                          if (i.endsWith('.mp4')) {
                            return Container(
                              margin: const EdgeInsets.only(top: 30),
                              constraints: const BoxConstraints(maxWidth: 650),
                              width: screenWidth,
                              child: VideoPlayerWidget(source: '$i'),
                            );
                          } else {
                            return Container(
                              margin: const EdgeInsets.only(top: 30),
                              width: screenWidth,
                              constraints: const BoxConstraints(maxWidth: 650),
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
                                  width: double.infinity,
                                  imageUrl: '$i',
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center),
                            );
                          }
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
