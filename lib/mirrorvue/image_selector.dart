// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomImageSelector extends StatefulWidget {
  final List<String> soundOptions;
  final List<String> thumbnailOptions;

  const CustomImageSelector({
    super.key,
    required this.soundOptions,
    required this.thumbnailOptions,
  });

  @override
  _CustomImageSelectorState createState() => _CustomImageSelectorState();
}

class _CustomImageSelectorState extends State<CustomImageSelector> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: Container(
            key: ValueKey<String>(widget.soundOptions[selectedIndex]),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color(0x50000000), blurRadius: 20, spreadRadius: 3),
            ]),
            margin: const EdgeInsets.only(top: 30, bottom: 15),
            child: CachedNetworkImage(
              placeholder: (context, url) => const Text(
                'Loading assets...',
                style: TextStyle(
                  color: Color.fromARGB(255, 168, 0, 0),
                  fontSize: 16,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageUrl: widget.soundOptions[selectedIndex],
            ),
          ),
        ),
        IntrinsicWidth(
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: List.generate(widget.thumbnailOptions.length, (index) {
              return SizedBox(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedIndex == index
                            ? const Color(0xffc99e62)
                            : const Color(0xff707070),
                        width: 2.0,
                      ),
                    ),
                    child: DynamicImage(
                      imagePath: widget.thumbnailOptions[index],
                      widthReduction: 25,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class DynamicImage extends StatefulWidget {
  final String imagePath;
  final double widthReduction;

  const DynamicImage(
      {super.key, required this.imagePath, this.widthReduction = 0.0});

  @override
  _DynamicImageState createState() => _DynamicImageState();
}

class _DynamicImageState extends State<DynamicImage> {
  double _imageWidth = 0.0;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  void _loadImage() async {
    final imageProvider = CachedNetworkImageProvider(widget.imagePath);

    final imageStream = imageProvider.resolve(const ImageConfiguration());
    imageStream.addListener(
      ImageStreamListener((ImageInfo info, bool _) {
        setState(() {
          _imageWidth = info.image.width.toDouble() - widget.widthReduction;
        });
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _imageWidth > 0.0
        ? CachedNetworkImage(
            placeholder: (context, url) => const Text(
              'Loading assets...',
              style: TextStyle(
                color: Color.fromARGB(255, 168, 0, 0),
                fontSize: 16,
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            imageUrl: widget.imagePath,
            width: _imageWidth,
          )
        : Container();
  }
}
