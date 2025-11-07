import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/bulb_options.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'banner_carousel.dart';
import 'model_section.dart';
import 'package:url_launcher/url_launcher.dart';

class HollywoodPage extends StatefulWidget {
  const HollywoodPage({super.key});

  @override
  State<HollywoodPage> createState() => _HollywoodPageState();
}

class _HollywoodPageState extends State<HollywoodPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 700;

    final List<String> imageAssetPaths = [
      'https://www.evervue.com/evervue/assets/product/hollywood/banner/custom-vanity-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/hollywood/banner/hollywood-makeup-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/hollywood/banner/lighted-mirror-hollywood.jpg',
      'https://www.evervue.com/evervue/assets/product/hollywood/banner/vanity-hollywood-lighted.jpg',
    ];

    final List<Map<String, String>> modelImagesPaths = [
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/a-large.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/a.jpg',
        'model': 'Model A'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/b-large.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/b.jpg',
        'model': 'Model B'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/c-large.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/c.jpg',
        'model': 'Model C'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/d-large.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/d.jpg',
        'model': 'Model D'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/e-large.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/e.jpg',
        'model': 'Model E'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/f-large.gif',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/f.gif',
        'model': 'Model F'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/g-large.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/hollywood/model/g.jpg',
        'model': 'Model G'
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
                  child: BannerCarousel(imagePaths: imageAssetPaths),
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
                            'https://www.evervue.com/evervue/assets/product/hollywood/hollywood.png',
                        height: 30,
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const Text(
                        'Experience the glamour of Hollywood with Grand Mirrors HOLLYWOOD, the perfect mirror for makeup application and stunning selfies. We\'ve updated the classic Hollywood Mirror design with modern, energy-efficient 3-watt bulbs and a 12-volt power supply. Our made-to-order collection can be customized to fit any size or shape, making it an ideal dressing mirror for bathrooms or bedrooms.',
                      ),
                      const SizedBox(height: 50),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            width: ifScreen ? 300 : screenWidth * 0.45,
                            child: Center(
                              child: Column(
                                children: [
                                  CachedNetworkImage(
                                      placeholder: (context, url) => const Text(
                                            'Loading assets...',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 168, 0, 0),
                                              fontSize: 16,
                                            ),
                                          ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      imageUrl:
                                          'https://www.evervue.com/evervue/assets/product/hollywood/lp.jpg'),
                                  const Text(
                                    'Low Power,\nHigh Performance',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      height: 1.5,
                                      color: Color(0xFF413831),
                                    ),
                                  ),
                                  const Text(
                                    '\nGrand Mirrors are powered by a low 24-volt supply, ensuring their safety for use in any bathroom without the need for additional permits or electrical applications.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                      height: 1.5,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            width: ifScreen ? 300 : screenWidth * 0.45,
                            child: Center(
                              child: Column(
                                children: [
                                  CachedNetworkImage(
                                      placeholder: (context, url) => const Text(
                                            'Loading assets...',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 168, 0, 0),
                                              fontSize: 16,
                                            ),
                                          ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      imageUrl:
                                          'https://www.evervue.com/evervue/assets/product/hollywood/ee.jpg'),
                                  const Text(
                                    'Energy\nEfficiency',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      height: 1.5,
                                      color: Color(0xFF413831),
                                    ),
                                  ),
                                  const Text(
                                    '\nThe 3-watt energy-efficient bulbs used in our Hollywood mirrors provide significant cost savings compared to standard bulbs.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                      height: 1.5,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 50),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const SizedBox(height: 50),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Center(
                          child: Text(
                            'Available in any Shape & Style',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      const Text(
                        'Our CNC computerized cutting machines enable us to create mirrors in virtually any shape and size you need.',
                      ),
                      ModelSection(modelImages: modelImagesPaths),
                      const SizedBox(height: 50),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Center(
                          child: Text(
                            'Dream Cuts created a spectacular\nsalon with Grand Mirrors',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
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
                          'https://www.evervue.com/evervue/assets/product/hollywood/hol_dreamcuts.jpeg',
                      width: screenWidth),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0),
                  width: screenWidth,
                  child: BulbOptions(),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: const VideoPlayerWidget(
                    source:
                        'assets/grandmirrors/images/product/hollywood/touch-light-custom-hollywood-mirror.mp4',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                          child: const Center(
                            child: Text(
                              'Touch On/Off Functionality',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5,
                              ),
                            ),
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 10, 15, 50),
                        child: const Text(
                          'We can install a sensor for touch-free mirror operation, allowing you to turn the light on and off with a simple hand wave.',
                          style: TextStyle(
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
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
