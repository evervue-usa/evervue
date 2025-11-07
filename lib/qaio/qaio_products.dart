import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class QAIOMirrorProducts extends StatefulWidget {
  const QAIOMirrorProducts({super.key});

  @override
  State<QAIOMirrorProducts> createState() => _QAIOMirrorProductsState();
}

class _QAIOMirrorProductsState extends State<QAIOMirrorProducts> {
  final List<Map<String, String>> qaioProducts = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/double-sink-smart-mirror-illustration.jpg',
      'title': 'QAIO Single Sink Mirror',
      'storelink': 'https://evervuestore.com/product/qaio-single-sink-mirror/'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/single-sink-bathroom-smart-mirror.jpg',
      'title': 'QAIO Double Sink Mirror',
      'storelink': 'https://evervuestore.com/product/qaio-double-sink-mirror/'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/bathroom-qaio-trifold-smart-tv.jpg',
      'title': 'QAIO Trifold Mirror',
      'storelink': 'https://evervuestore.com/product/qaio-trifold-mirror/'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/cabinet-custom-smart-mirror-tv.jpg',
      'title': 'QAIO Cabinet Mirror',
      'storelink': ''
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/oval-smart-mirror-single-sink.jpg',
      'title': 'QAIO Oval Mirror',
      'storelink': 'https://evervuestore.com/product/qaio-oval-mirror/'
    },
    {
      'image':
          'assets/qaio/resources/home/mirror/custom-smart-tv-mirror-drawing.mp4',
      'title': 'QAIO Custom Mirror',
      'storelink': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 700;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'QAIO Products',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: qaioProducts.asMap().entries.map((entry) {
                    int index = entry.key;
                    var product = entry.value;

                    return Stack(
                      children: [
                        Container(
                          constraints:
                              BoxConstraints(maxWidth: ifScreen ? 300 : 350),
                          child: index == qaioProducts.length - 1
                              ? VideoPlayerWidget(
                                  source: product['image']!,
                                )
                              : CachedNetworkImage(
                                  placeholder: (context, url) => const Text(
                                        'Loading assets...',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 168, 0, 0),
                                          fontSize: 16,
                                        ),
                                      ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                  imageUrl: product['image']!),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            constraints:
                                BoxConstraints(maxWidth: ifScreen ? 300 : 350),
                            color: const Color(0xff333333),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 10),
                                  child: Text(
                                    product['title']!,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Century Gothic'),
                                  ),
                                ),
                                if (product['storelink'] != null &&
                                    product['storelink']!.isNotEmpty)
                                  InkWell(
                                    onTap: () {
                                      launchUrlString(product['storelink']!);
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 13),
                                      color: Colors.white,
                                      child: const Text(
                                        'Buy',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Century Gothic'),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
