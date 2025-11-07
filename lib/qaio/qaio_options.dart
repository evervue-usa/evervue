// ignore_for_file: library_private_types_in_public_api

import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class QaioOptions extends StatefulWidget {
  final Function(int) onOptionSelected;

  const QaioOptions({super.key, required this.onOptionSelected});
  @override
  _QaioOptionsState createState() => _QaioOptionsState();
}

class _QaioOptionsState extends State<QaioOptions> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool ifScreen = screenWidth > 700;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: screenWidth,
              height: (screenHeight - 156) / 3,
              child: Stack(
                children: [
                  SizedBox(
                    width: screenWidth,
                    height: screenHeight,
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
                      imageUrl:
                          'https://www.evervue.com/evervue/assets/smart-mirror-tv-single-sink.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: ((screenHeight * 0.5) - 112) * 0.2,
                      left: 30,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        width: ifScreen ? screenWidth * 0.3 : 180,
                        child: Column(
                          children: [
                            CachedNetworkImage(
                                placeholder: (context, url) => const Text(
                                      'Loading assets...',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 168, 0, 0),
                                        fontSize: 16,
                                      ),
                                    ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                imageUrl:
                                    'https://www.evervue.com/evervue/assets/qaio-mirror-logo-black.png'),
                            InkWell(
                              onTap: () {
                                widget.onOptionSelected(1);
                              },
                              child: Container(
                                width: 120,
                                margin: const EdgeInsets.only(top: 20),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                color: const Color(0xff3b9ec7),
                                child: const Text(
                                  'Learn More',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Century Gothic',
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              width: screenWidth,
              height: (screenHeight - 156) / 3,
              child: Stack(
                children: [
                  SizedBox(
                    width: screenWidth,
                    height: screenHeight,
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
                      imageUrl:
                          'https://www.evervue.com/evervue/assets/workout-fitness-mirror-tv-room.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: ((screenHeight * 0.5) - 112) * 0.2,
                      right: 30,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        width: ifScreen ? screenWidth * 0.3 : 180,
                        child: Column(
                          children: [
                            CachedNetworkImage(
                                placeholder: (context, url) => const Text(
                                      'Loading assets...',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 168, 0, 0),
                                        fontSize: 16,
                                      ),
                                    ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                imageUrl:
                                    'https://www.evervue.com/evervue/assets/qaio-flex-logo-black.png'),
                            InkWell(
                              onTap: () {
                                widget.onOptionSelected(2);
                              },
                              child: Container(
                                width: 120,
                                margin: const EdgeInsets.only(top: 20),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                color: const Color(0xff3b9ec7),
                                child: const Text(
                                  'Learn More',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Century Gothic',
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              width: screenWidth,
              height: (screenHeight - 156) / 3,
              child: Stack(
                children: [
                  SizedBox(
                    width: screenWidth,
                    height: screenHeight,
                    child: VideoPlayerWidget(
                        source:
                            'assets/qaio/resources/home/custom/qaio-custom.mp4'),
                  ),
                  Positioned(
                      top: ((screenHeight * 0.5) - 112) * 0.2,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        width: screenWidth,
                        child: Column(
                          children: [
                            CachedNetworkImage(
                                placeholder: (context, url) => const Text(
                                      'Loading assets...',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 168, 0, 0),
                                        fontSize: 16,
                                      ),
                                    ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                width: ifScreen ? screenWidth * 0.35 : 190,
                                imageUrl:
                                    'https://www.evervue.com/evervue/assets/qaio-custom-logo-black.png'),
                            InkWell(
                              onTap: () {
                                widget.onOptionSelected(3);
                              },
                              child: Container(
                                width: 120,
                                margin: const EdgeInsets.only(top: 20),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                color: const Color(0xff3b9ec7),
                                child: const Text(
                                  'Learn More',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Century Gothic',
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
