import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/banner_carousel.dart';
import 'package:evervue/grandmirrors/lig_mir/light_option.dart';
import 'package:evervue/grandmirrors/lig_mir/model_section.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LuxPage extends StatefulWidget {
  const LuxPage({super.key});

  @override
  State<LuxPage> createState() => _LuxPageState();
}

class _LuxPageState extends State<LuxPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imageAssetPaths = [
      'https://www.evervue.com/evervue/assets/product/lux/banner/lux-lighted-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/made-to-measure-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/salm-energy-efficient-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/extra thin-sink-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/custom-lighted-mirror-lux.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/professional-custom-lighted-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/round-lighted-custom-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/salon-lighting-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/bespoke-bathroom-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/grandmirrors-lux-lighted-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/vanity-mirror-lux.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/custom-grand-mirrors-lux.jpg',
    ];

    final List<Map<String, String>> modelImagesPaths = [
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lux/model/slanted/model-a.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lux/model/front-view/model-a.jpg',
        'model': 'Model A'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lux/model/slanted/model-b.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lux/model/front-view/model-b.jpg',
        'model': 'Model B'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lux/model/slanted/model-c.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lux/model/front-view/model-c.jpg',
        'model': 'Model C'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lux/model/slanted/model-d.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lux/model/front-view/model-d.jpg',
        'model': 'Model D'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lux/model/slanted/model-e.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lux/model/front-view/model-e.jpg',
        'model': 'Model E (Trifold Mirror)'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lux/model/slanted/model-f.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lux/model/front-view/model-f.jpg',
        'model': 'Model F'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lux/model/slanted/model-g.jpg',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lux/model/front-view/model-g.jpg',
        'model': 'Model G (Rounded Corners)'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lux/model/slanted/model-h.gif',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lux/model/front-view/model-h.gif',
        'model': 'Model H (Custom Mirrors)'
      },
      {
        'large':
            'https://www.evervue.com/evervue/assets/product/lux/model/slanted/model-j.gif',
        'thumbnail':
            'https://www.evervue.com/evervue/assets/product/lux/model/front-view/model-j.gif',
        'model': 'Model J'
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
                    padding: const EdgeInsets.all(20),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 0, 18),
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
                                'https://www.evervue.com/evervue/assets/product/lux/lux.png',
                            height: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Divider(
                          height: 10,
                          indent: 15,
                          endIndent: 15,
                          thickness: 1,
                          color: Color(0xff9F9081),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: const Text(
                            'Experience unparalleled elegance and sophistication with our Grand Mirrors LUX, designed to become the focal point of your room and an heirloom you will treasure for years to come. Crafted with meticulous attention to detail, each mirror is completely customizable, offering a wide selection of LED patterns and colors to choose from. Made to order and tailored to your unique taste, Grand Mirrors LUX is the ultimate upgrade for any bathroom, elevating it to a luxurious sanctuary. Embrace the timeless appeal of Grand Mirrors LUX and transform your space today.',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 50.0),
                          child: const Divider(
                            height: 10,
                            indent: 15,
                            endIndent: 15,
                            thickness: 1,
                            color: Color(0xff9F9081),
                          ),
                        ),
                        Center(
                          child: Container(
                            constraints: const BoxConstraints(maxWidth: 700),
                            width: screenWidth,
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
                                  'https://www.evervue.com/evervue/assets/product/lux/lux_com.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                            child: const Center(
                              child: Text(
                                'Customize Your LED Light Layout',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  height: 1.5,
                                ),
                              ),
                            )),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: const Text(
                            'With Grand Mirrors LUX, you have the freedom to choose from an extensive selection of LED light strip designs and lengths. Tailor the perfect lighting solution based on the dimensions of your mirror and the specific purpose it will serve in your space.',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                        ModelSection(modelImages: modelImagesPaths),
                        Container(
                            margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                            child: const Center(
                              child: Text(
                                'Powerful Light Options to Suit Your Needs',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  height: 1.5,
                                ),
                              ),
                            )),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: const Text(
                            'Grand Mirrors utilizes innovative light transfer technology that directs light precisely towards you, resulting in an exceptionally effective illumination that is up to three times brighter than other mirrors on the market.'
                            '\n \nChoose from an array of powerful lighting options, including True Light, Cool Light, Philips LED Light, or Warm Light, to create the perfect ambiance in your space.'
                            '\n \nFor added convenience and customization, we offer wireless dimmers for Cool, Warm, and True Light options. You can also choose to include Philips LED lights with dimmers for the ultimate in personalized lighting control..',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            constraints: const BoxConstraints(maxWidth: 500),
                            width: screenWidth,
                            child: const VideoPlayerWidget(
                              source:
                                  'assets/grandmirrors/images/product/lux/custom-lighted-mirror-one-touch-control.mp4',
                            ),
                          ),
                        ),
                        LEDLight(lightImages: ledLightPaths),
                        PhilipsLEDLight(
                            philipslightImages: philipsLedLightPaths),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                            child: const Center(
                              child: Text(
                                'Effortless Installation',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  height: 1.5,
                                ),
                              ),
                            )),
                        Center(
                          child: Container(
                            constraints: const BoxConstraints(maxWidth: 500),
                            width: screenWidth,
                            child: const VideoPlayerWidget(
                              source:
                                  'assets/grandmirrors/images/product/lux/install-extra-thin-sleek-lighted-mirror.mp4',
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: const Text(
                            'Installing your Grand Mirrors LUX is very simple. Attach the two provided strips to the wall using the included hardware, connect the mirror to the power supply, and hang it on the wall. The installation process is straightforward and typically takes between 30 and 40 minutes.',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 700),
                      width: screenWidth,
                      child: const VideoPlayerWidget(
                        source:
                            'assets/grandmirrors/images/product/lux/energy-efficient-mirror-light-detection.mp4',
                      ),
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
                            'We provide the option to install a touchless sensor, which turns your mirror on and off without any physical contact, for a more convenient experience for users. The light will effortlessly turn on and off when you wave your hand in front of the mirror, offering a simple and hygienic solution.',
                            style: TextStyle(
                              fontSize: 14,
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
        )));
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
