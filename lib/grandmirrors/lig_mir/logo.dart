// ignore_for_file: unnecessary_string_interpolations, strict_top_level_inference

import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'banner_carousel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class Descriptions {
  String title;
  String description;
  List<String> image;

  Descriptions(
      {required this.title, required this.description, required this.image});
}

class Buttons {
  String text;
  String cnt;
  List<String> image;

  Buttons({required this.text, required this.cnt, required this.image});
}

Widget infoTemplate(descriptions) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Text(
            descriptions.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              height: 1.5,
            ),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 25, bottom: 35),
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Text(
          descriptions.description,
          style: const TextStyle(
            height: 1.5,
          ),
        ),
      ),
      CarouselSlider(
        options: CarouselOptions(),
        items: List.from(descriptions.image.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: AspectRatio(
                  aspectRatio: 12 / 9,
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
                ),
              );
            },
          );
        }).toList()),
      ),
    ],
  );
}

class _LogoPageState extends State<LogoPage> {
  List<Buttons> btns = [
    Buttons(cnt: '1', text: 'Hair Salons', image: [
      'https://www.evervue.com/evervue/assets/product/logo/salon-led-for-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/gentlemen-lounge-mirror-glass-with-light.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/barbers-mirrors-and-lightings.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/lighting-and-mirrors-for-salons.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/smart-mirror-logo-led-light.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/best-lighting-and-mirrors-for-salon.jpg'
    ]),
    Buttons(cnt: '2', text: 'Gym and Fitness Studios', image: [
      'https://www.evervue.com/evervue/assets/product/logo/led-light-mirror-logo-perfect-for-workout.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/best-mirror-and-lighting-for-yoga.jpg'
    ]),
    Buttons(cnt: '3', text: 'Retail Stores', image: [
      'https://www.evervue.com/evervue/assets/product/logo/eyewear-store-led-light-mirrors-with-logo.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/best-led-light-mirror-for-retail-stores.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/best-lighting-and-mirrors-for-make-up.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/mirror-logo-with-led-lights-perfect-for-store.jpg'
    ]),
    Buttons(cnt: '4', text: 'Restaurants and Bars', image: [
      'https://www.evervue.com/evervue/assets/product/logo/mirror-and-led-light-with-logo-restaurant.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/perfect-lighting-and-mirrors-with-logo-for-lounge.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/smart-led-light-mirror-for-restaurant.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/smart-mirror-perfect-ambiance-for-restaurant.jpg'
    ]),
    Buttons(cnt: '5', text: 'Dance Studios', image: [
      'https://www.evervue.com/evervue/assets/product/logo/best-mirror-led-light-with-logo-for-ballet-school.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/smart-mirror-with-led-light-logo.jpg'
    ]),
    Buttons(cnt: '6', text: 'Beauty Salons', image: [
      'https://www.evervue.com/evervue/assets/product/logo/salon-lighting-and-mirrors.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/led-light-for-mirror-salon.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/best-smart-mirror-led-light-for-salon.jpg'
    ]),
    Buttons(cnt: '7', text: 'Corporate Offices', image: [
      'https://www.evervue.com/evervue/assets/product/logo/office-led-light-mirrors-with-logo.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/best-lighting-and-mirrors-for-office.jpg',
      'https://www.evervue.com/evervue/assets/product/logo/led-light-mirrors-best-for-cozy-office.jpg'
    ]),
  ];

  List<Descriptions> informations = [
    Descriptions(
        title: 'Elusive Brand Reinforcement',
        description:
            'Subtly fortifying your brand with mirror logos provides an understated yet impactful way to leave a lasting impression on your clients. It serves as a subtle gesture, conveying “We\nre here, always at your service.”',
        image: [
          'https://www.evervue.com/evervue/assets/product/logo/best-lighting-and-mirrors-for-salon.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/best-led-light-mirror-for-retail-stores.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/led-light-for-mirror-salon.jpg'
        ]),
    Descriptions(
        title: 'Opulent Captures for the Gram',
        description:
            'In this era of contemporary elegance, anyone can become a trendsetter. If you create a sophisticated environment, you increase the chances of people taking and sharing pictures online, which will serve as a high-status endorsement for your brand.',
        image: [
          'https://www.evervue.com/evervue/assets/product/logo/mirror-with-led-light-logo-pefect-for-selfie.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/led-light-mirror-logo-perfect-for-workout.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/best-led-light-mirror-with-logo-perfect-for-instagram.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/classy-lighting-and-mirrors-perfect-for-selfie.jpg'
        ]),
    Descriptions(
        title: 'Lasting Impressions',
        description:
            'Your logo serves as the visual embodiment of your brand\ns demeanor. By placing it on a mirror, your logo becomes the first and last sight for your customers during their visit, creating an impression that lingers.',
        image: [
          'https://www.evervue.com/evervue/assets/product/logo/best-mirror-and-lighting-for-yoga.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/smart-mirror-with-led-light-logo.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/best-mirror-led-light-with-logo-for-ballet-school.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/best-smart-mirror-led-light-for-salon.jpg'
        ]),
    Descriptions(
        title: 'Dissimilarity',
        description:
            'Stand out in a crowded market. Grand Mirrors LOGO are unique and memorable. They set you apart from competitors and establish your brand as one that pays attention to detail.',
        image: [
          'https://www.evervue.com/evervue/assets/product/logo/a-perfect-lighting-and-mirror-for-coffee-shop.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/perfect-lighting-and-mirrors-with-logo-for-lounge.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/bistro-led-lights-and-mirrors.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/mirror-and-led-light-with-logo-restaurant.jpg'
        ]),
    Descriptions(
        title: 'Versatility',
        description:
            'Whether it\ns a full-wall mirror, a stylish barbershop station, or an elegant restaurant restroom, Grand Mirrors LOGO can be tailored to any space. Your logo can find a home wherever it suits your branding strategy.',
        image: [
          'https://www.evervue.com/evervue/assets/product/logo/classy-lighting-and-mirrors-for-bathroom.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/perfect-match-smart-mirror-led-light-logo-for-bathroom.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/bathroom-mirrors-with-logo-lights.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/luxury-smart-mirror-led-light-with-logo.jpg'
        ]),
    Descriptions(
        title: 'Enduring Investment',
        description:
            'Grand Mirrors LOGO are built to last. Investing in Grand Mirrors LOGO is an investment in your brand\ns future. They won\nt wear out or fade, ensuring your logo shines bright for years to come.',
        image: [
          'https://www.evervue.com/evervue/assets/product/logo/office-led-light-mirrors-with-logo.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/full-length-mirror-led-light-with-logo.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/dental-clinic-smart-mirror-led-light.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/best-lighting-and-mirrors-for-office.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/led-light-mirrors-best-for-cozy-office.jpg'
        ]),
    Descriptions(
        title: 'Positive Customer Experience',
        description:
            'When customers see your logo in the mirror, it creates a sense of belonging and familiarity. It adds to their overall experience, making it more enjoyable.',
        image: [
          'https://www.evervue.com/evervue/assets/product/logo/barbers-mirrors-and-lightings.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/gentlemen-lounge-mirror-glass-with-light.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/show-mirror-with-led-light.jpg',
          'https://www.evervue.com/evervue/assets/product/logo/eyewear-store-led-light-mirrors-with-logo.jpg'
        ]),
  ];

  final List<String> imageAssetPaths = [
    'https://www.evervue.com/evervue/assets/product/logo/banner/mirror-with-lights.jpg',
    'https://www.evervue.com/evervue/assets/product/logo/banner/led-for-mirror.jpg',
    'https://www.evervue.com/evervue/assets/product/logo/banner/lighting-and-mirrors.jpg',
    'https://www.evervue.com/evervue/assets/product/logo/banner/showroom-mirror-with-lights.jpg',
    'https://www.evervue.com/evervue/assets/product/logo/banner/smart-mirror-led.jpg'
  ];

  List<String> displayImage = [
    'https://www.evervue.com/evervue/assets/product/logo/salon-led-for-mirror.jpg',
    'https://www.evervue.com/evervue/assets/product/logo/gentlemen-lounge-mirror-glass-with-light.jpg',
    'https://www.evervue.com/evervue/assets/product/logo/barbers-mirrors-and-lightings.jpg',
    'https://www.evervue.com/evervue/assets/product/logo/lighting-and-mirrors-for-salons.jpg',
    'https://www.evervue.com/evervue/assets/product/logo/smart-mirror-logo-led-light.jpg',
    'https://www.evervue.com/evervue/assets/product/logo/best-lighting-and-mirrors-for-salon.jpg'
  ];

  String displayCnt = '1';

  Widget btnsTemplate(buttons) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor:
              displayCnt == buttons.cnt ? Colors.white : Colors.black,
          backgroundColor: displayCnt == buttons.cnt
              ? const Color(0xffdfa95d)
              : Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
          shadowColor: Colors.black,
          elevation: 2.0,
          textStyle: const TextStyle(height: 1.5, fontFamily: 'Century Gothic'),
        ),
        onPressed: () {
          setState(() {
            displayImage = buttons.image;
            displayCnt = buttons.cnt;
          });
        },
        child: Text(buttons.text),
      ),
    );
  }

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
                  SizedBox(
                    width: double.infinity,
                    child: BannerCarousel(imagePaths: imageAssetPaths),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Column(children: <Widget>[
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
                              'https://www.evervue.com/evervue/assets/product/logo/grandmirrors-smart-mirror-logo-led-light.jpg',
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
                        child: const Text(
                          'Every interaction with your audience holds significance, where branding and identity dominate authenticity. The use of mirrors in branding is often overlooked but can have a significant impact. By reflecting your logo and essence, it can elevate your brand and make it more realistic. Using the Grand Mirrors LOGO to promote your logo makes perfect sense.',
                          style: TextStyle(
                            height: 1.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Center(
                          child: Text(
                            'Optimized Elegance',
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
                          'Grand Mirrors LOGO promotes the overall appearance of your place, along with showcasing your brand. They give your restaurant, barbershop, or salon a more upscale vibe and create a cozier atmosphere.',
                          style: TextStyle(
                            height: 1.5,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      children:
                          btns.map((buttons) => btnsTemplate(buttons)).toList(),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                    child: Column(
                      children: <Widget>[
                        CarouselSlider(
                          options: CarouselOptions(),
                          items: List.from(displayImage.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: AspectRatio(
                                    aspectRatio: 12 / 9,
                                    child: CachedNetworkImage(
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
                                        imageUrl: '$i'),
                                  ),
                                );
                              },
                            );
                          }).toList()),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Center(
                            child: Text(
                              'Color Matched Perfection',
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
                          margin: const EdgeInsets.only(top: 25, bottom: 35),
                          child: const Text(
                            'The Grand Mirrors LOGO lets you build your logo in practically any hue, assuring a precise match to your original company emblem.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        const VideoPlayerWidget(
                          source:
                              'assets/grandmirrors/images/product/logo/best-mirror-glass-with-led-light-logo-for-lounge.mp4',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: Column(
                      children: informations
                          .map((descriptions) => infoTemplate(descriptions))
                          .toList(),
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
