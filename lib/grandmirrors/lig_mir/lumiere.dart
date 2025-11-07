import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/light_option.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'banner_carousel.dart';
import 'model_section.dart';
import 'package:url_launcher/url_launcher.dart';

class LumierePage extends StatefulWidget {
  const LumierePage({super.key});

  @override
  State<LumierePage> createState() => _LumierePageState();
}

class _LumierePageState extends State<LumierePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final List<String> imageAssetPaths = [
      'https://www.evervue.com/evervue/assets/product/lumiere/banner/frosted-lumiere.jpg',
      'https://www.evervue.com/evervue/assets/product/lumiere/banner/bathroom-lumiere.jpg',
      'https://www.evervue.com/evervue/assets/product/lumiere/banner/grandmirror-lumiere.jpg',
      'https://www.evervue.com/evervue/assets/product/lumiere/banner/sink-lumiere.jpg',
    ];

    final List<Map<String, String>> modelImagesPaths = [
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-a.jpeg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-a-preview.jpeg',
        'model': 'Model A'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-b.jpeg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-b-preview.jpeg',
        'model': 'Model B'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-c.jpeg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-c-preview.jpeg',
        'model': 'Model C'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-d.jpeg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-d-preview.jpeg',
        'model': 'Model D'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-e.jpeg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-e-preview.jpeg',
        'model': 'Model E'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-h.jpeg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lumiere/model/model-h-preview.jpeg',
        'model': 'Model H'
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
                            'https://www.evervue.com/evervue/assets/product/lumiere/lumiere.jpg',
                        height: 30,
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const Text(
                        'Discover the allure of the Grand Mirrors LUMIÈRE, which have exquisitely frosted borders and make for a stunning work of art. This mirror, which is intended for bathrooms, has a frosted section that is up to three inches wide. This feature allows indirect lighting to pass through the mirror and fill the space with a gentle, ambient glow from the front and the back. The captivating LUMIÈRE mirror will improve the look and feel of your room.',
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
                            'Discover Your Style!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      const Text(
                        'Personalize your mirror to reflect your unique taste. Grand Mirrors LUMIÈRE offers an extensive range of styles and custom shapes, ensuring the perfect design for any space.',
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
                        'The Grand Mirrors LUMIERE features advanced light transfer technology, directing the light precisely towards you for optimal illumination. Experience a powerful glow up to three times brighter than conventional mirrors.'
                        '\n \nSelect from a variety of lighting options: Cool, Warm, True Light, or Philips LED Light. Wireless dimmers are available for Cool, Warm, and True Light options. Alternatively, opt for Philips LED lights with dimmers for a seamless lighting experience.',
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Container(
                          constraints: const BoxConstraints(maxWidth: 500),
                          width: screenWidth,
                          child: const VideoPlayerWidget(
                            source:
                                'assets/grandmirrors/images/product/lumiere/sway-light-control-warm.mp4',
                          ),
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
                Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 500),
                    width: screenWidth,
                    child: const VideoPlayerWidget(
                      source:
                          'assets/grandmirrors/images/product/lumiere/lighted-mirror-with-surface-mount.mp4',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 10, 15, 50),
                  child: const Text(
                    'Installation is a breeze with our straightforward process. Simply mount the strips on the wall, connect the mirror to the power source, and position it against the wall. Installation typically takes just 30 to 40 minutes, allowing you to enjoy your stunning mirror in no time.',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 700),
                    width: screenWidth,
                    child: const VideoPlayerWidget(
                      source:
                          'assets/grandmirrors/images/product/lumiere/lighted-touchless-bespoke-mirror.mp4',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
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
                          'For an elevated user experience, we offer the option to install a touchless sensor that turns your mirror on and off without any physical contact. Simply wave your hand in front of the mirror, and the light will effortlessly switch on and off, providing a seamless and hygienic solution.',
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
