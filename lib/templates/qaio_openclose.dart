import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class QaioOpenClose extends StatefulWidget {
  const QaioOpenClose({super.key});

  @override
  State<QaioOpenClose> createState() => _QaioOpenCloseState();
}

class _QaioOpenCloseState extends State<QaioOpenClose> {
  Widget? columnContent;
  bool isContentVisible = false;

  void updateColumn(Widget newContent) {
    setState(() {
      columnContent = newContent;
      isContentVisible = true;
    });
  }

  double _rotationAngle = 0.0;

  void _rotateIcon() {
    setState(() {
      _rotationAngle += 45;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 165,
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
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl:
                      'assets/qaio/resources/home/flex/woman-exercising-in-a-fitness-mirror.jpg'),
              Positioned(
                  top: 30,
                  left: 16,
                  child: GestureDetector(
                    onTap: () {
                      _rotateIcon();
                      updateColumn(const Column(
                        children: [
                          Text(
                            'Great Audio:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Hidden Integrated Stereo Speakers.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'TV Completely Hidden:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              'When turned off, the monitor completely disappears and looks like a regular mirror.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'See Yourself Better:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Highly reflective silver mirror',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ));
                    },
                    child: AnimatedRotation(
                      turns: _rotationAngle / 45,
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        Visibility(
          visible: isContentVisible,
          child: Container(
            constraints: const BoxConstraints(maxWidth: 200),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(120, 120, 120, 0.9)),
            child: columnContent ?? const Column(),
          ),
        )
      ],
    );
  }
}
