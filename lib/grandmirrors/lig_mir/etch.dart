// ignore_for_file: unnecessary_string_interpolations

import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/light_option.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'banner_carousel.dart';
import 'package:url_launcher/url_launcher.dart';

class EtchPage extends StatefulWidget {
  const EtchPage({super.key});

  @override
  State<EtchPage> createState() => _EtchPageState();
}

class _EtchPageState extends State<EtchPage> {
  final List<String> imageAssetPaths = [
    'https://www.evervue.com/evervue/assets/product/etch/banner/bathroom-lighted-mirror.jpg',
    'https://www.evervue.com/evervue/assets/product/etch/banner/sink-custom-mirror.jpg',
    'https://www.evervue.com/evervue/assets/product/etch/banner/etch-framed-mirror.jpg'
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

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: screenWidth,
                          margin: const EdgeInsets.only(bottom: 25),
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
                                'https://www.evervue.com/evervue/assets/product/etch/etch.png',
                            height: 35,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        const Divider(
                          height: 10,
                          thickness: 1,
                          color: Color(0xff9F9081),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 50),
                          child: const Text(
                            'We can craft your Grand Mirrors ETCH in any size or shape imaginable. Our CNC computerized mirror cutting machines allow us to cut glass with remarkable precision, accommodating sizes up to 177 inches by 96 inches (450cm x 244cm).',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Wrap(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 10),
                              width: (screenWidth - 50) / 2,
                              child: Center(
                                child: Column(
                                  children: [
                                    CachedNetworkImage(
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
                                        imageUrl:
                                            'https://www.evervue.com/evervue/assets/product/etch/lp.jpg'),
                                    const Text(
                                      'Low\nPower',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
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
                              padding: const EdgeInsets.only(left: 10),
                              width: (screenWidth - 50) / 2,
                              child: Center(
                                child: Column(
                                  children: [
                                    CachedNetworkImage(
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
                                        imageUrl:
                                            'https://www.evervue.com/evervue/assets/product/etch/sf.jpg'),
                                    const Text(
                                      'Energy\nEfficiency',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    width: double.infinity,
                    color: const Color(0xff211F1D),
                    padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Etch Designs',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 25),
                        Wrap(
                          children: [
                            'https://www.evervue.com/evervue/assets/product/etch/gatsby.jpeg',
                            'https://www.evervue.com/evervue/assets/product/etch/nature.jpeg',
                            'https://www.evervue.com/evervue/assets/product/etch/mandala.jpeg',
                            'https://www.evervue.com/evervue/assets/product/etch/paisley.jpeg',
                            'https://www.evervue.com/evervue/assets/product/etch/simple.jpeg',
                            'https://www.evervue.com/evervue/assets/product/etch/geometrical.jpeg',
                            'https://www.evervue.com/evervue/assets/product/etch/french.jpeg'
                          ].map((i) {
                            return Container(
                              width: (screenWidth - 30) / 3,
                              padding: const EdgeInsets.all(5),
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
                                imageUrl: '$i',
                                fit: BoxFit.cover,
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 40),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Powerful Light Options\nto Suit Your Needs',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 1.5,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 10),
                          child: const Text(
                            'Grand Mirrors utilizes innovative light transfer technology that directs light precisely towards you, resulting in an exceptionally effective illumination that is up to three times brighter than other mirrors on the market.'
                            '\n \nChoose from an array of powerful lighting options, including True Light, Cool Light, Philips LED Light, or Warm Light, to create the perfect ambiance in your space.'
                            '\n \nFor added convenience and customization, we offer wireless dimmers for Cool, Warm, and True Light options. You can also choose to include Philips LED lights with dimmers for the ultimate in personalized lighting control.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(maxWidth: 500),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/grandmirrors/images/product/etch/etch-standard-warm-light.mp4',
                          ),
                        ),
                        LEDLight(lightImages: ledLightPaths),
                        PhilipsLEDLight(
                            philipslightImages: philipsLedLightPaths),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenWidth,
                    child: const VideoPlayerWidget(
                      source:
                          'assets/grandmirrors/images/product/etch/light-motion-sensor-for-bathroom-mirror.mp4',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Touch On/Off Functionality',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 1.5,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text(
                            'We can install a sensor that allows you to turn your mirror on and off with a simple hand wave, eliminating the need to touch the mirror.',
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
        ),
      ),
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
