// ignore_for_file: unnecessary_string_interpolations

import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/bulb_baroque.dart';
import 'package:evervue/grandmirrors/lig_mir/light_option.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class BaroquePage extends StatefulWidget {
  const BaroquePage({super.key});

  @override
  State<BaroquePage> createState() => _BaroquePageState();
}

class _BaroquePageState extends State<BaroquePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final List<Map<String, String>> ledLightPaths = [
      {
        'image': 'https://www.evervue.com/evervue/assets/warm-light.png',
        'light': 'Warm Light',
        'model': '(3000K)'
      },
      {
        'image': 'https://www.evervue.com/evervue/assets/cool-light.png',
        'light': 'Cool Light',
        'model': '(6000K)'
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
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
                        'https://www.evervue.com/evervue/assets/product/baroque/banner-ancient-made-to-measure-framed-mirror.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        imageUrl:
                            'https://www.evervue.com/evervue/assets/product/baroque/baroque-custom-grand-mirrors.png',
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const Text(
                        'Experience unparalleled luxury with Grand Mirrors Baroque, a stunning 30-inch by 40-inch mirror featuring built-in lighted bulbs. Its elegant design adds a touch of opulence to any space.',
                      ),
                      const SizedBox(height: 50),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Center(
                          child: Text(
                            'Versatile Design and Colour Options',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Grand Mirrors BAROQUE offers a plethora of colour options and is available in both portrait and landscape orientations. It\'s the perfect addition to your makeup table or dedicated makeup room.',
                      ),
                      const SizedBox(height: 20),
                      CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 1.45 / 1,
                          viewportFraction: 0.7,
                        ),
                        items: [
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/baroque-grand-mirrors.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/golden-vintage-square-mirror.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/lighted-framed-vintage-mirror-silver.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/silver-lighted-mirror.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/lamp-bulb-mirror-pink-make-up.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/pink-lighted-make-up-framed-mirror.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/celebrity-blue-custom-framed-mirror.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/bulb-mirror-framed-make-up-blue-ocean.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/black-grand-mirrors-baroque.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/horizontal-black-mirror-for-make-up.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/white-gray-made-to-measure-mirror.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/white-bespoke-framed-mirror.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/red-full-length-lighted-bulb-mirror.png',
                          'https://www.evervue.com/evervue/assets/product/baroque/carousel/classic-red-frame-evervue-lighted-mirror.png'
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            const Color.fromARGB(45, 0, 0, 0))),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => const Text(
                                          'Loading assets...',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 168, 0, 0),
                                            fontSize: 16,
                                          ),
                                        ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                    imageUrl: '$i'),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 50),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Center(
                          child: Text(
                            'Exceptional Lighting Choices',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Grand Mirrors BAROQUE is designed to provide the best lighting for vanity mirrors. With energy-efficient bulbs and two additional LED Light Options, including Cool Light (6000k) and Warm Light (3000k), you\'ll enjoy the perfect illumination for your needs.',
                      ),
                      LEDLight(lightImages: ledLightPaths),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.bottomCenter,
                  child: const VideoPlayerWidget(
                    source:
                        'assets/grandmirrors/images/product/baroque/modern-energy-efficient-mirror.mp4',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Center(
                    child: Text(
                      'Effortless Installation',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Text(
                    'Installing your Grand Mirrors is a breeze. Simply attach the two provided strips to the wall using the included hardware, connect the mirror to the power supply, and hang it on the wall. The installation process is straightforward and typically takes between 30 and 40 minutes.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const VideoPlayerWidget(
                    source:
                        'assets/grandmirrors/images/product/baroque/mount-custom-framed-mirror.mp4',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0),
                  width: screenWidth,
                  child: BulbBaroque(),
                ),
              ],
            ),
          ),
          Positioned(
              top: 5,
              left: 15,
              right: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              spreadRadius: .5,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                              color: Color.fromARGB(45, 0, 0, 0))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const GrandMirrorsMainPage()),
                          );
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                  ),
                  FloatingActionButton.small(
                    elevation: 2,
                    shape: const CircleBorder(),
                    backgroundColor: Colors.transparent,
                    onPressed: _whatsApp,
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
                            'https://www.evervue.com/evervue/assets/whatsapp.png'),
                  ),
                ],
              )),
        ],
      )),
    );
  }
}

Future<void> _whatsApp() async {
  const url = 'https://api.whatsapp.com/send?phone=19494414262';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
