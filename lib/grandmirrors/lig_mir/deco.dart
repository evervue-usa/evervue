import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/light_option.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'banner_carousel.dart';
import 'package:url_launcher/url_launcher.dart';

class DecoPage extends StatefulWidget {
  const DecoPage({super.key});

  @override
  State<DecoPage> createState() => _DecoPageState();
}

class _DecoPageState extends State<DecoPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imageAssetPaths = [
      'https://www.evervue.com/evervue/assets/product/deco/banner/deco-lighted-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/deco/banner/vanity-mirror-deco.jpg',
      'https://www.evervue.com/evervue/assets/product/deco/banner/deco-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/deco/banner/custom-deco-mirror.jpg',
    ];

    final List<Map<String, String>> ledLightPaths1 = [
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

    final List<Map<String, String>> ledLightPaths2 = [
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
                            'https://www.evervue.com/evervue/assets/product/deco/deco.png',
                        height: 30,
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            'DECO MODULA',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(0),
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
                              'https://www.evervue.com/evervue/assets/product/deco/modula.jpg',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Redefine your approach to interior design with Grand Mirrors DECO Modula. Unlike any other mirror on the market, the Grand Mirrors DECO Modula offers both hexagonal and square-shaped mirror options. Equipped with a Multi-Color or True Light Back Light system, your mirrors will brighten any space.',
                      ),
                      const SizedBox(height: 50),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            'Available Shapes:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            width: 130,
                            height: 150,
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
                                          'https://www.evervue.com/evervue/assets/product/deco/square.jpg'),
                                  const Text(
                                    'Square\n(10”/25cm)',
                                    textAlign: TextAlign.center,
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
                            width: 130,
                            height: 150,
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
                                          'https://www.evervue.com/evervue/assets/product/deco/hexagon.png'),
                                  const Text(
                                    'Hexagon\n(12”/30cm)',
                                    textAlign: TextAlign.center,
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
                      LEDLight(lightImages: ledLightPaths1),
                      PhilipsLEDLight(philipslightImages: philipsLedLightPaths),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            'DECO FRAME',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(0),
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
                              'https://www.evervue.com/evervue/assets/product/deco/sink.jpg',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Elevate any room in your home with DECO Frame Mirrors, featuring built-in LED lights and back-light powered by True Light Technology. These mirrors give your room a feeling of elegance.',
                      ),
                      LEDLight(lightImages: ledLightPaths2),
                      PhilipsLEDLight(philipslightImages: philipsLedLightPaths),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            'DECO ART',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(0),
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
                              'https://www.evervue.com/evervue/assets/product/deco/bath.jpg',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Experience stunning beauty every time you look at a DECO Art piece. This breathtaking mirror is perfect for any room, featuring beveled mirror squares that measure 4 inches. It\'s a true statement piece that captivates attention.',
                      ),
                      LEDLight(lightImages: ledLightPaths2),
                      PhilipsLEDLight(philipslightImages: philipsLedLightPaths),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            'Effortless Installation',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 10),
                        alignment: Alignment.bottomCenter,
                        child: const VideoPlayerWidget(
                          source:
                              'assets/grandmirrors/images/product/deco/extra-thin-wall-lighted-mirror-deco.mp4',
                        ),
                      ),
                      const Text(
                        'Installation is a breeze with our straightforward process. Simply mount the strips on the wall, connect the mirror to the power source, and position it against the wall. In most cases, installation takes just 30 to 40 minutes, allowing you to enjoy your stunning mirror in no time.',
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Center(
                          child: Text(
                            'Powerful Light Options to Suit Your Needs',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      const Text(
                        'Grand Mirrors utilizes innovative light transfer technology that directs light precisely towards you, resulting in an exceptionally effective illumination that is up to three times brighter than other mirrors on the market.'
                        '\n \nChoose from an array of powerful lighting options, including True Light, Cool Light, Philips LED Light, or Warm Light, to create the perfect ambiance in your space.'
                        '\n \nFor added convenience and customization, we offer wireless dimmers for Cool, Warm, and True Light options. You can also choose to include Philips LED lights with dimmers for the ultimate in personalized lighting control.',
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.only(bottom: 10),
                        alignment: Alignment.bottomCenter,
                        child: const VideoPlayerWidget(
                          source:
                              'assets/grandmirrors/images/product/deco/touch-control-true-lighted-mirror.mp4',
                        ),
                      ),
                      LEDLight(lightImages: ledLightPaths2),
                      PhilipsLEDLight(philipslightImages: philipsLedLightPaths),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: const VideoPlayerWidget(
                    source:
                        'assets/grandmirrors/images/product/deco/mirror-with-motion-light-detection.mp4',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
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
                    ],
                  ),
                ),
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
