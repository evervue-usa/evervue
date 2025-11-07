// ignore_for_file: library_private_types_in_public_api

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CosmosOptions extends StatefulWidget {
  final Function(int) onOptionSelected;

  const CosmosOptions({super.key, required this.onOptionSelected});

  @override
  _CosmosOptionsState createState() => _CosmosOptionsState();
}

class _CosmosOptionsState extends State<CosmosOptions> {
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
                height: (screenHeight - 156) / 2,
                child: InkWell(
                  onTap: () {
                    widget.onOptionSelected(1);
                  },
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
                              'https://www.evervue.com/evervue/assets/cosmos-outdoor-best-tv-display.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          constraints: const BoxConstraints(maxWidth: 1000),
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
                                  width: ifScreen ? 300 : 200,
                                  imageUrl:
                                      'https://www.evervue.com/evervue/assets/cosmos-white.png')),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth,
                height: (screenHeight - 156) / 2,
                child: InkWell(
                  onTap: () {
                    widget.onOptionSelected(2);
                  },
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
                              'https://www.evervue.com/evervue/assets/cosmos-marine-outdoor-ceiling-mounted-done.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          constraints: const BoxConstraints(maxWidth: 1000),
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
                                  width: ifScreen ? 300 : 200,
                                  imageUrl:
                                      'https://www.evervue.com/evervue/assets/cosmos-marine-white.png')),
                        ),
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
