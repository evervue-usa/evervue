// ignore_for_file: unnecessary_string_interpolations

import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class CabinetPage extends StatefulWidget {
  const CabinetPage({super.key});

  @override
  State<CabinetPage> createState() => _CabinetPageState();
}

class _CabinetPageState extends State<CabinetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
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
                        'https://www.evervue.com/evervue/assets/product/cabinet/convert-custom-cabinet-mirror.jpg',
                    width: double.infinity,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(bottom: 15),
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
                                'https://www.evervue.com/evervue/assets/product/cabinet/grand-mirrors-cabinet-logo.jpg',
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
                          margin: const EdgeInsets.only(top: 20),
                          child: const Center(
                            child: Text(
                              'CABINET MIRROR MADE TO ANY SIZE, ANY SHAPE, JUST FOR YOU',
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
                          margin: const EdgeInsets.only(top: 5, bottom: 30),
                          child: const Center(
                            child: Text(
                              'Where Quality Meets Convenience',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 1.45 / 1,
                      viewportFraction: 0.7,
                    ),
                    items: [
                      'https://www.evervue.com/evervue/assets/product/cabinet/grand-mirrors-cabinet-base.jpg',
                      'https://www.evervue.com/evervue/assets/product/cabinet/inner-plug-in-one-cabinet-mirror.jpg',
                      'https://www.evervue.com/evervue/assets/product/cabinet/durable-light-weight-blum-brackets.jpg',
                      'https://www.evervue.com/evervue/assets/product/cabinet/outer-plug-in-one-cabinet-mirror.jpg',
                      'https://www.evervue.com/evervue/assets/product/cabinet/lighted-cabinet-grooming-mirror.jpg',
                      'https://www.evervue.com/evervue/assets/product/cabinet/slim-mirror-stainless-steel-handle.jpg',
                      'https://www.evervue.com/evervue/assets/product/cabinet/no-gap-slim-mirror-cabinet.jpg'
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
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
                        },
                      );
                    }).toList(),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: const Text(
                            'Experience the benefits of exceptional lighting with our powerful True Light Technology, combined with the convenience of power outlets and crystal clear, bright mirrors. The CABINET Mirror from Grand Mirrors offers an incredible level of functionality with three glass shelves inside for storing your everyday items.'
                            '\n \nWith the Grand Mirrors CABINET, you can have both functionality and style. Our mirrors provide the perfect combination of practicality and elegance, making them the ideal addition to any bathroom. Choose the Grand Mirrors CABINET for quality and convenience, and enjoy the ultimate bathroom experience.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
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
                                'https://www.evervue.com/evervue/assets/product/cabinet/three-way-lighted-bathroom-mirror.jpg',
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: const Center(
                            child: Text(
                              'Experience the Perfect Light and Ambiance with the Grand Mirrors CABINET',
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
                          margin: const EdgeInsets.only(top: 25),
                          child: const Text(
                            'Our cabinet mirror has built-in light strips on the mirror that give you the necessary True Light reflection. Your bathroom will radiate opulence and elegance thanks to our sophisticated backlight, setting the scene for any occasion.'
                            '\n \nThe Grand Mirrors CABINET is made to offer the ideal harmony of style and functionality. You can make your bathroom opulent and restful using our innovative True Light Technology and chic backlighting. You can rely on Grand Mirrors to give you the ideal lighting and atmosphere for your ideal bathroom experience.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
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
                                'https://www.evervue.com/evervue/assets/product/cabinet/frameless-lighted-cabinet-mirror.jpg',
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: const Center(
                            child: Text(
                              'At Grand Mirrors, we understand that every bathroom is unique, which is why we offer custom-sized mirrors for our CABINET line',
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
                          margin: const EdgeInsets.only(top: 25, bottom: 30),
                          child: const Text(
                            'We can create the perfect cabinet mirror for your space, in virtually any length and height, thanks to its standard depth of 5″ (125mm). (Please note that this option is not available for individual retail and is subject to minimum order quantities.).'
                            '\n \nTo help you determine the ideal size for your cabinet mirror, we provide minimum and maximum dimensions for each compartment. These dimensions ensure that you have ample space to store your daily essentials while maintaining the sleek and elegant design of the Grand Mirrors CABINET. Trust Grand Mirrors to provide you with a custom-sized cabinet mirror that perfectly fits your unique bathroom needs.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Wrap(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 20,
                              height: 64,
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  left: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  right: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              child: const Text(
                                'Minimum Glass Width',
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 20,
                              height: 64,
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  right: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              child: const Text(
                                '16” (40cm)',
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 20,
                              height: 64,
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  left: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  right: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              child: const Text(
                                'Minimum Glass Height',
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 20,
                              height: 64,
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  right: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              child: const Text(
                                '16” (40cm)',
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 20,
                              height: 64,
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  left: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  right: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              child: const Text(
                                'Minimum Surface',
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 20,
                              height: 64,
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  right: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              child: const Text(
                                '800 Square Inches (0.5m2)',
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 20,
                              height: 64,
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  left: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  right: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              child: const Text(
                                'Maximum Glass Width',
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 20,
                              height: 64,
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  right: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              child: const Text(
                                '28” (70cm)',
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 20,
                              height: 64,
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  left: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  right: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  bottom: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              child: const Text(
                                'Maximum Glass Height',
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 20,
                              height: 64,
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  right: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  bottom: BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              child: const Text(
                                '44” (110cm)',
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const VideoPlayerWidget(
                          source:
                              'assets/grandmirrors/images/product/cabinet/custom-sized-cabinet-mirror-sink.mp4',
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
