import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/banner_carousel.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AuraPage extends StatefulWidget {
  const AuraPage({super.key});

  @override
  State<AuraPage> createState() => _AuraPageState();
}

class _AuraPageState extends State<AuraPage> {
  final List<String> imageAssetPaths = [
    'https://www.evervue.com/evervue/assets/luxury-lighted-mirrors-banner-aura-flipped.jpg',
    'https://www.evervue.com/evervue/assets/contemporary-lighted-mirror-aura-banner.jpg',
    'https://www.evervue.com/evervue/assets/elegant-led-lighted-mirrors-aura.jpg',
    'https://www.evervue.com/evervue/assets/high-end-bathroom-lighted-mirror-aura.jpg',
    'https://www.evervue.com/evervue/assets/crystal-clear-lighted-mirror-aura-banner.jpg',
  ];

  final List<String> imageAssetContentPaths = [
    'https://www.evervue.com/evervue/assets/aura-led-light-mirrors-eclipse.jpg',
    'https://www.evervue.com/evervue/assets/round-aura-led-light-mirror.jpg',
    'https://www.evervue.com/evervue/assets/aura-led-light-mirrors-lux.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
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
                                'https://www.evervue.com/evervue/assets/aura-logo.png',
                            height: 50,
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
                            'Experience the perfect blend of elegance and technology with Grand Mirrors AURA. Featuring a sleek, 18-inch diameter round LED band, AURA provides a radiant focal point with an unmatched lighting effect. The slim 10mm design offers precise illumination for grooming and skincare routines.\n\nAURA is customizable to suit your needs, allowing you to adjust the LED band location for taller individuals or children. Its advanced defogger keeps the viewing area fog-free and crystal clear, even in the steamiest conditions. Transform your bathroom into a haven of light, clarity, and sophistication with Grand Mirrors AURA.',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                            child: const Center(
                              child: Text(
                                'Select the shape, size and location',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  height: 1.5,
                                ),
                              ),
                            )),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 25, 0, 25),
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
                                  'https://www.evervue.com/evervue/assets/custom-elegant-lighted-mirror-aura.gif',
                              width: 600,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                            child: const Center(
                              child: Text(
                                'Customize Your Grand Mirrors AURA',
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
                            'With Grand Mirrors AURA, customization is key. Choose the shape that best suits your style—round, oval, or even a custom design. You can also select the perfect size to fit your space, ensuring AURA complements your bathroom decor seamlessly.\n\nMost importantly, you can customize the location of the LED band on the mirror. Position it higher for taller individuals or lower for children, ensuring everyone in the household enjoys optimal lighting. Grand Mirrors AURA adapts to your needs, providing a tailored lighting experience for all.',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                            child: const Center(
                              child: Text(
                                'The Brightest LED Light for Unmatched Clarity',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  height: 1.5,
                                ),
                              ),
                            )),
                        Container(
                          alignment: Alignment.bottomCenter,
                          margin: const EdgeInsets.fromLTRB(0, 25, 0, 18),
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
                                'https://www.evervue.com/evervue/assets/bright-led-lighted-mirror-aura.jpg',
                            width: 355,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: const Text(
                            'Grand Mirrors AURA is equipped with the brightest LED light ever used in a bathroom mirror. With a neutral color temperature of 6500K, it offers a crisp, natural light that enhances every detail. Thanks to its exceptional brightness and efficient placement, AURA provides an unparalleled experience in lighted mirrors, ensuring you always see yourself in the best light. Whether for grooming, makeup, or daily routines, AURA delivers the perfect illumination every time.',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                            child: const Center(
                              child: Text(
                                'Crystal Clear, Fog-Free Reflection',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  height: 1.5,
                                ),
                              ),
                            )),
                        Container(
                          alignment: Alignment.bottomCenter,
                          margin: const EdgeInsets.fromLTRB(0, 25, 0, 18),
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
                                'https://www.evervue.com/evervue/assets/aura-fog-free-lighted-mirror.jpg',
                            width: 355,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: const Text(
                            'Grand Mirrors AURA comes standard with a built-in defogger inside the LED light. This feature ensures the mirror remains fog-free and clear at all times, even in the steamiest bathroom conditions. No more wiping or waiting—just a crystal-clear reflection whenever you need it.',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                            child: const Center(
                              child: Text(
                                'AURA LED Light: Available for Other Grand Mirrors Models',
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
                  SizedBox(
                    width: double.infinity,
                    child: BannerCarousel(imagePaths: imageAssetContentPaths),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: const Text(
                            'The AURA LED light is also available as an add-on option for our other Grand Mirrors models, including LUX, Eclipse, Lumiere, and more. Enhance any mirror with this exceptional lighting feature to experience the same bright, neutral illumination and fog-free clarity that AURA provides.',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
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
                        Container(
                            margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                            child: const Center(
                              child: Text(
                                'Easy Installation',
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
                          margin: const EdgeInsets.fromLTRB(15, 10, 15, 50),
                          child: const Text(
                            'Like all other Grand Mirrors, AURA comes complete and ready to install. Designed for convenience, each mirror is delivered with everything you need for a quick and hassle-free setup, allowing you to enjoy your new mirror in no time.',
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
                              'https://www.evervue.com/evervue/assets/whatsapp.png',
                        )),
                  ],
                )),
          ],
        )));
  }
}

Future<void> _whatsApp() async {
  const url = 'https://api.whatsapp.com/send?phone=19494038285';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
