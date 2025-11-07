import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class QaioImageStack extends StatefulWidget {
  const QaioImageStack({super.key, required this.images});

  final List<String> images;

  @override
  State<QaioImageStack> createState() => _QaioImageStackState();
}

class _QaioImageStackState extends State<QaioImageStack> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 700;

    return Stack(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: SizedBox(
            key: ValueKey<int>(selectedIndex),
            width: ifScreen ? 700 : screenWidth,
            height: 400,
            child: CachedNetworkImage(
              placeholder: (context, url) => const Text(
                'Loading assets...',
                style: TextStyle(
                  color: Color.fromARGB(255, 168, 0, 0),
                  fontSize: 16,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageUrl: widget.images[selectedIndex],
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: widget.images.asMap().entries.map((content) {
                int index = content.key;
                String more = content.value;

                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: (screenWidth - 40) * 0.3,
                    constraints: const BoxConstraints(maxWidth: 130),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.transparent,
                          width: 3),
                    ),
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 300),
                      opacity: selectedIndex == index ? 1.0 : 0.7,
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
                          imageUrl: more),
                    ),
                  ),
                );
              }).toList(),
            ))
      ],
    );
  }
}
