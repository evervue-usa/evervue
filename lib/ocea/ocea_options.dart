import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class OceaOptions extends StatefulWidget {
  final Function(int) onOptionSelected;

  const OceaOptions({super.key, required this.onOptionSelected});

  @override
  State<OceaOptions> createState() => _OceaOptionsState();
}

class _OceaOptionsState extends State<OceaOptions> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                widget.onOptionSelected(1);
              },
              child: SizedBox(
                width: screenWidth,
                height: (screenHeight - 150) / 2,
                child: Stack(
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
                      width: screenWidth,
                      height: screenHeight,
                      imageUrl:
                          'https://www.evervue.com/evervue/assets/bathroom-tv-ocea-style.jpg',
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
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
                              'https://www.evervue.com/evervue/assets/ocea-style-logo.png',
                          width: 350,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                widget.onOptionSelected(2);
              },
              child: SizedBox(
                width: screenWidth,
                height: (screenHeight - 156) / 2,
                child: Stack(
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
                      width: screenWidth,
                      height: screenHeight,
                      imageUrl:
                          'https://www.evervue.com/evervue/assets/ocea-pro-water-resistant-tv.jpg',
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
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
                              'https://www.evervue.com/evervue/assets/ocea-pro-logo.png',
                          width: 350,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
