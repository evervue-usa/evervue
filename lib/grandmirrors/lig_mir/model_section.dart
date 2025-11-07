import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ModelSection extends StatefulWidget {
  const ModelSection({super.key, required this.modelImages});
  final List<Map<String, String>> modelImages;

  @override
  State<ModelSection> createState() => _ModelSectionState();
}

class _ModelSectionState extends State<ModelSection> {
  int changeImage = 0;

  void _onChange(int index) {
    setState(() {
      changeImage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 600;

    return Center(
      child: Column(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: Container(
              key: ValueKey<int>(changeImage),
              margin: const EdgeInsets.only(top: 15),
              width: screenWidth * 0.8,
              child: CachedNetworkImage(
                placeholder: (context, url) => const Text(
                  'Loading assets...',
                  style: TextStyle(
                    color: Color.fromARGB(255, 168, 0, 0),
                    fontSize: 16,
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageUrl: widget.modelImages[changeImage]['large']!,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
              spacing: 10,
              runSpacing: 10,
              children: widget.modelImages.map((content) {
                int index = widget.modelImages.indexOf(content);
                return InkWell(
                  onTap: () => _onChange(index),
                  child: Column(
                    children: [
                      Container(
                        width:
                            ifScreen ? screenWidth * 0.13 : screenWidth * 0.2,
                        padding: const EdgeInsets.all(3),
                        margin: const EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xff413831), width: 0.5)),
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
                          imageUrl: '${content['thumbnail']}',
                        ),
                      ),
                      SizedBox(
                        width:
                            ifScreen ? screenWidth * 0.12 : screenWidth * 0.2,
                        child: Text(
                          '${content['model']}',
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                );
              }).toList())
        ],
      ),
    );
  }
}
