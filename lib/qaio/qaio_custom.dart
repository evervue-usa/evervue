import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';

class QaioCustomPage extends StatefulWidget {
  const QaioCustomPage({super.key});

  @override
  State<QaioCustomPage> createState() => _QaioCustomPageState();
}

class _QaioCustomPageState extends State<QaioCustomPage> {
  List<Map<String, String>> customMedia = [
    {
      'title': 'Know your size',
      'image':
          'https://www.evervue.com/evervue/assets/custom-size-for-smart-mirror-tv.jpg',
      'description':
          'Measure the width and height of your favorite QAIO. The maximum size is 130 inches x 96 inches (335X244cm).'
    },
    {
      'title': 'Select the style of the corner',
      'image':
          'https://www.evervue.com/evervue/assets/rounded-corner-vanity-mirror.jpg',
      'description':
          'Select the corner of the mirror: straight or round (1 inch or 2 inch radius). The edges of the mirror are polished beautifully.'
    },
    {
      'title': 'Need a special shape?',
      'image':
          'https://www.evervue.com/evervue/assets/sketch-of-smart-mirror-tv-size.jpg',
      'description':
          'If you want a special shape, you can equip a piece of paper template or AutoCAD document. The mirror is cut with a high-precision CAD machine to ensure perfect fit.'
    },
    {
      'title': 'Choose the cut outs',
      'image':
          'https://www.evervue.com/evervue/assets/custom-mirror-cut-outs-for-faucet.jpg',
      'description':
          'Choose if you need cut outs in the mirror for the faucet or lighting.'
    },
    {
      'title': 'TV size and location',
      'image':
          'assets/qaio/resources/home/custom/custom-mirror-tv-size-and-location.mp4',
      'description':
          'You can choose TV sizes from 12.1 inches to a large 98 inches. All TVs use 24V DC. TVs above 21.5 inches are equipped with 4K Ultra HD resolution. You can also choose the location of the TV in the mirror. (You need a distance of 3 inches from the edge of the mirror and the LED light to the wall.)'
    },
    {
      'title': 'Choose true lighting',
      'image':
          'assets/qaio/resources/home/custom/double-sink-mirror-with-led-lights.mp4',
      'description':
          'Real lighting will make your smart bathroom cabinet mirror a versatile vanity mirror. You can choose the exact position and number of real light bars in the mirror.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool ifScreen = screenWidth > 700;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'QAIO Customization',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'QAIO, The Smarter Mirror, can be customized to any shape and size.\nThere is no minimum order quantity and it can be shipped directly to your doorstep.',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                            children: customMedia.asMap().entries.map((entry) {
                          Map<String, String> media = entry.value;

                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Wrap(
                              spacing: 20,
                              children: [
                                if (screenWidth < 699)
                                  Container(
                                    padding: EdgeInsets.only(bottom: 20),
                                    width: screenWidth,
                                    child: Text(
                                      media['title']!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                SizedBox(
                                  width: ifScreen
                                      ? (screenWidth / 2) - 40
                                      : screenWidth - 40,
                                  child: media['image'] != null &&
                                          media['image']!.endsWith('.mp4')
                                      ? VideoPlayerWidget(
                                          source: media['image']!)
                                      : CachedNetworkImage(
                                          placeholder: (context, url) =>
                                              const Text(
                                            'Loading assets...',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 168, 0, 0),
                                              fontSize: 16,
                                            ),
                                          ),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                          imageUrl: media['image']!,
                                        ),
                                ),
                                SizedBox(
                                  width: ifScreen
                                      ? (screenWidth / 2) - 40
                                      : screenWidth - 40,
                                  child: Column(
                                    children: [
                                      if (screenWidth > 700)
                                        SizedBox(
                                          width: ifScreen
                                              ? (screenWidth / 2) - 40
                                              : screenWidth - 40,
                                          child: Text(
                                            media['title']!,
                                            textAlign: ifScreen
                                                ? TextAlign.start
                                                : TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        media['description']!,
                                        textAlign: ifScreen
                                            ? TextAlign.start
                                            : TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList())
                      ],
                    ),
                  )))),
    );
  }
}
