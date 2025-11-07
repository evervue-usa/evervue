import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/raphael.dart';

class SlidingImages extends StatefulWidget {
  const SlidingImages({super.key});

  @override
  State<SlidingImages> createState() => _SlidingImagesState();
}

class _SlidingImagesState extends State<SlidingImages> {
  double _dividerPosition = 0.5;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double widgetWidth = constraints.maxWidth;
        double widgetHeight = constraints.maxHeight;

        return SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                child: CachedNetworkImage(
                  placeholder: (context, url) => const Text(
                    'Loading assets...',
                    style: TextStyle(
                      color: Color.fromARGB(255, 168, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl:
                      'https://www.evervue.com/evervue/assets/grand-mirrors-light-comparison.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: ClipRect(
                  clipper: CustomImageClipper(_dividerPosition * widgetWidth),
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
                        'https://www.evervue.com/evervue/assets/mirrors-without-light-comparison.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: _dividerPosition * widgetWidth -
                    (widgetHeight * 0.05 + 9) / 2,
                top: 0,
                bottom: 0,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    setState(() {
                      _dividerPosition += details.delta.dx / widgetWidth;
                      _dividerPosition = _dividerPosition.clamp(0.0, 1.0);
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: widgetHeight * 0.45,
                        width: 2,
                        color: Colors.white,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          shape: BoxShape.circle,
                        ),
                        height: widgetHeight * 0.08,
                        width: widgetHeight * 0.08,
                        child: const FittedBox(
                          fit: BoxFit.contain,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Iconify(
                                Raphael.arrowleft,
                                color: Colors.white,
                              ),
                              Iconify(
                                Raphael.arrowright,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: widgetHeight * 0.45,
                        width: 2,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomImageClipper extends CustomClipper<Rect> {
  final double width;

  CustomImageClipper(this.width);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(CustomImageClipper oldClipper) {
    return oldClipper.width != width;
  }
}
