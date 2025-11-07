import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/light_option.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'banner_carousel.dart';
import 'model_section.dart';
import 'package:url_launcher/url_launcher.dart';

class EclipsePage extends StatefulWidget {
  const EclipsePage({super.key});

  @override
  State<EclipsePage> createState() => _EclipsePageState();
}

class _EclipsePageState extends State<EclipsePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imageAssetPaths = [
      'https://www.evervue.com/evervue/assets/product/eclipse/banner/backlit-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/eclipse/banner/lighted-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/eclipse/banner/premium-mirror.jpg',
    ];

    final List<Map<String, String>> modelImagesPaths = [
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-a.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-a-preview.jpg',
        'model': 'Model A'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-b.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-b-preview.jpg',
        'model': 'Model B'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-c.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-c-preview.jpg',
        'model': 'Model C'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-d.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-d-preview.jpg',
        'model': 'Model D'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-e.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-e-preview.jpg',
        'model': 'Model E'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-f.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/eclipse/model/model-f-preview.jpg',
        'model': 'Model F'
      },
    ];

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
      {
        'image': 'https://www.evervue.com/evervue/assets/true-light.png',
        'light': 'True Light',
        'model': '(2700K - 6200K)'
      },
      {
        'image': 'https://www.evervue.com/evervue/assets/multicolor-light.png',
        'light': 'Multi',
        'model': 'Color'
      },
    ];

    final List<Map<String, String>> philipsLedLightPaths = [
      {
        'image': 'https://www.evervue.com/evervue/assets/philips-warm.png',
        'light': 'Philips Warm Light',
        'model': '(2700K)'
      },
      {
        'image': 'https://www.evervue.com/evervue/assets/philips-mid-warm.png',
        'light': 'Philips Mid-Warm Light',
        'model': '(4000K)'
      },
      {
        'image': 'https://www.evervue.com/evervue/assets/philips-cool.png',
        'light': 'Philips Cool Light',
        'model': '(6500K)'
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
                            'https://www.evervue.com/evervue/assets/product/eclipse/eclipse.jpg',
                        height: 30,
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const Text(
                        'The Grand Mirrors ECLIPSE is the perfect choice for a bathroom mirror, thanks to its evenly dispersed LED light that radiates from the back of the mirror. Not only does it provide a brilliant reflection, but it also casts a soft, indirect illumination throughout the bathroom, enhancing the atmosphere and overall ambiance. Experience the captivating allure of the Grand Mirrors ECLIPSE in your space.',
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Center(
                          child: Text(
                            'Embrace Your Style!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      const Text(
                        'Personalize your mirror to reflect your unique taste. Grand Mirrors ECLIPSE offers an extensive range of styles and custom shapes, ensuring the perfect design for any space. Let your imagination run wild and create the ideal mirror to complement your style and enhance your environment.',
                      ),
                      ModelSection(modelImages: modelImagesPaths),
                      const SizedBox(height: 50),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Center(
                          child: Text(
                            'Bright Lighting Solutions',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Grand Mirrors utilize advanced light transfer technology, directing the light towards the user for an exceptionally bright reflection—up to three times brighter than other mirrors.'
                        '\n \nWireless dimmers are available for Cool, Warm, and True Light options. You can also opt for Philips LED lights equipped with dimmers for seamless control.',
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: const VideoPlayerWidget(
                          source:
                              'assets/grandmirrors/images/product/eclipse/modify-custom-backlit-mirror.mp4',
                        ),
                      ),
                    ],
                  ),
                ),
                LEDLight(lightImages: ledLightPaths),
                PhilipsLEDLight(philipslightImages: philipsLedLightPaths),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Center(
                    child: Text(
                      'Effortless Installation',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: const VideoPlayerWidget(
                    source:
                        'assets/grandmirrors/images/product/eclipse/premium-mirror-surface-mounting.mp4',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 10, 15, 50),
                  child: const Text(
                    'Mount the two strips on the wall using the included hardware, connect the mirror to the power supply, and hang it up. The process typically takes 30-40 minutes.',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: const VideoPlayerWidget(
                    source:
                        'assets/grandmirrors/images/product/eclipse/mirror-with-light-motion-detector.mp4',
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
                          'Upon request, we can install a sensor that enables touchless control. A simple hand wave turns the light on and off.',
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
