// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../templates/video_player.dart';

class CabiTVOptions extends StatefulWidget {
  final Function(int) onOptionSelected;

  const CabiTVOptions({super.key, required this.onOptionSelected});

  @override
  _CabiTVOptionsState createState() => _CabiTVOptionsState();
}

class _CabiTVOptionsState extends State<CabiTVOptions> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                widget.onOptionSelected(1);
              },
              child: SizedBox(
                width: screenWidth,
                height: (screenHeight - 156) / 2,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: FittedBox(
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 1000,
                          height: (screenHeight * 0.50),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/cabitv/resources/home/under-cabinet-kitchen-smart-tv.mp4',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber.withValues(alpha: 0.8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          child: const Text(
                            'CabiTV CT-100',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                widget.onOptionSelected(2);
              },
              child: SizedBox(
                width: screenWidth,
                height: (screenHeight - 156) / 2,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: FittedBox(
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 1000,
                          height: (screenHeight * 0.50),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/cabitv/resources/home/under-cabinet-kitchen-tv.mp4',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber.withValues(alpha: 0.8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          child: const Text(
                            'CabiTV CT-200',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
