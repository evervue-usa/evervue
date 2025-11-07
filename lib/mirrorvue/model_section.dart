import 'package:evervue/templates/video_player.dart';
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
    return Center(
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 700),
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: VideoPlayerWidget(
                key: ValueKey(widget.modelImages[changeImage]['large']!),
                source: widget.modelImages[changeImage]['large']!,
              ),
            ),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: widget.modelImages.map((content) {
              int index = widget.modelImages.indexOf(content);
              bool isActive = index == changeImage;
              return InkWell(
                onTap: () => _onChange(index),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isActive ? const Color(0xffc99e62) : Colors.white,
                      width: 1.5,
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 10),
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
                        imageUrl: content['thumbnail']!,
                      ),
                      SizedBox(
                        width: 80,
                        child: Text(
                          content['model']!,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
