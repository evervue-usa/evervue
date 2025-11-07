// ignore_for_file: unnecessary_string_interpolations

import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
// import 'package:evervue/templates/pdf_viewer.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'banner_carousel.dart';
import 'package:url_launcher/url_launcher.dart';

class AmbiancePage extends StatefulWidget {
  const AmbiancePage({super.key});

  @override
  State<AmbiancePage> createState() => _AmbiancePageState();
}

class _AmbiancePageState extends State<AmbiancePage> {
  final List<String> imageAssetPaths = [
    'https://www.evervue.com/evervue/assets/product/ambiance/banner/ambiance-terzo-lamp.jpg',
    'https://www.evervue.com/evervue/assets/product/ambiance/banner/lighted-mirror-with-lamp.jpg',
    'https://www.evervue.com/evervue/assets/product/ambiance/banner/ambiance-pavan-banner.jpg',
    'https://www.evervue.com/evervue/assets/product/ambiance/banner/lamp-mirror.jpg',
    'https://www.evervue.com/evervue/assets/product/ambiance/banner/formina-lamp.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 700;

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
                          width: MediaQuery.of(context).size.width,
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
                                'https://www.evervue.com/evervue/assets/product/ambiance/ambiance.png',
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
                            'Elevate the atmosphere of any room with Grand Mirrors AMBIANCE. These versatile mirrors bring an added layer of customization to your bathroom, bedroom, or any space where a mirror is desired.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        const Divider(
                          height: 10,
                          thickness: 1,
                          color: Color(0xff9F9081),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30, bottom: 25),
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
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(maxWidth: 500),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/grandmirrors/images/product/ambiance/premium-mirror-surface-mounting.mp4',
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            'Installation is a breeze — simply attach the two strips to the wall using the provided hardware, connect the mirror to the power supply, and hang it on the wall. The process typically takes between 30 and 40 minutes.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: double.infinity,
                    color: const Color(0xff211F1D),
                    padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'The',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ),
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
                              'https://www.evervue.com/evervue/assets/product/ambiance/ambiance.png',
                          height: 25,
                          alignment: Alignment.topLeft,
                        ),
                        const Text(
                          'Lamp Gallery',
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
                            'https://www.evervue.com/evervue/assets/product/ambiance/parona.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/pavana.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/piloni.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/pizzoli.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/ribolla.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/salano.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/tachini.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/vigasio.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/mazzano.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/luzzara.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/moglia.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/mascioni.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/capriola.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/cusona.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/formina.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/giano.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/carraia.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/cascia.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/chianti.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/cizzolo.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/ferrone.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/bancole.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/terzo-red.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/casazza.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/palidano.jpg',
                            'https://www.evervue.com/evervue/assets/product/ambiance/terzo-green.jpg',
                          ].map((i) {
                            return Container(
                              width: ifScreen
                                  ? (screenWidth - 30) / 3
                                  : (screenWidth - 30) / 2,
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
                                  imageUrl: '$i'),
                            );
                          }).toList(),
                        ),
                        const SizedBox(
                          height: 30,
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
