import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/light_option.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'banner_carousel.dart';
import 'package:url_launcher/url_launcher.dart';

class AllurePage extends StatefulWidget {
  const AllurePage({super.key});

  @override
  State<AllurePage> createState() => _AllurePageState();
}

class _AllurePageState extends State<AllurePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imageAssetPaths = [
      'https://www.evervue.com/evervue/assets/product/allure/banner/allure-circular-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/allure/banner/led-bathroom-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/allure/banner/gold-frame-lighted-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/allure/banner/oval-bathroom-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/allure/banner/allure-lighted-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/allure/banner/rectangular-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/allure/banner/aluminum-allure-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/allure/banner/oval-custom-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/allure/banner/grand-mirrors-allure.jpg',
      'https://www.evervue.com/evervue/assets/product/allure/banner/custom-allure-mirror.jpg',
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
                            'https://www.evervue.com/evervue/assets/product/allure/allure.png',
                        height: 30,
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const Text(
                        'The ALLURE by Grand Mirrors is a stunning mirror that features a frame made of brushed aluminum and an incredibly efficient integrated LED light. Grand Mirrors ALLURE offers you the opportunity to design the bathroom of your dreams by providing a variety of sizes and designs to choose from. This sophisticated and elegant mirror will elevate the ambiance of any space and enhance your daily routine with its perfect illumination.',
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            'Grand Mirrors Allure Round',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
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
                              'https://www.evervue.com/evervue/assets/product/allure/round.jpg',
                        ),
                      ),
                      const Text(
                        'Available in a variety of sizes from 23.5" up to 48" in diameter and four stunning colors: AvaBlack, Silver, Gold, and Bronze. These mirrors are the perfect combination of form and function, adding a touch of elegance and sophistication to any space.',
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            'Grand Mirrors Allure Oval',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
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
                              'https://www.evervue.com/evervue/assets/product/allure/oval.jpg',
                        ),
                      ),
                      const Text(
                        'Available in a range of sizes from 23.5" x 40" up to 35" x 63" and four beautiful colors: Black, Silver, Gold, and Bronze. These mirrors offer a perfect blend of style and functionality, adding a touch of luxury and sophistication to any room.',
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            'Grand Mirrors Allure Rectangular',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
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
                              'https://www.evervue.com/evervue/assets/product/allure/gold.jpg',
                        ),
                      ),
                      const Text(
                        'Available in a  variety of sizes from 23.5" x 40" up to 35" x 63" and four stunning colors: Black, Silver, Gold, and Bronze. These mirrors combine style and practicality, making them the perfect addition to any space.',
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xff9F9081),
                          )),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            'Powerful Light Options to Suit Your Needs',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      const Text(
                        'Grand Mirrors utilizes innovative light transfer technology that directs light precisely towards you, resulting in an exceptionally effective illumination that is up to three times brighter than other mirrors on the market.\n\nChoose from an array of powerful lighting options, including True Light, Cool Light, Philips LED Light, or Warm Light, to create the perfect ambiance in your space.\n\nFor added convenience and customization, we offer wireless dimmers for Cool, Warm, and True Light options. You can also choose to include Philips LED lights with dimmers for the ultimate in personalized lighting control.',
                      ),
                      Container(
                          padding: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                          child: const VideoPlayerWidget(
                            source:
                                'assets/grandmirrors/images/product/allure/allure-standard-warm-light.mp4',
                          )),
                      LEDLight(lightImages: ledLightPaths),
                      PhilipsLEDLight(philipslightImages: philipsLedLightPaths),
                      const SizedBox(height: 50),
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
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                        child: const VideoPlayerWidget(
                          source:
                              'assets/grandmirrors/images/product/allure/install-recess-round-lighted-mirror-wall.mp4',
                        ),
                      ),
                      const Text(
                        'Installing your Grand Mirrors is a breeze. Simply attach the two provided strips to the wall using the included hardware, connect the mirror to the power supply, and hang it on the wall. The installation process is straightforward and typically takes between 30 and 40 minutes.',
                      ),
                      const SizedBox(height: 20),
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
