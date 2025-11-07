// ignore_for_file: unnecessary_string_interpolations

import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/light_option.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'banner_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfessionalPage extends StatefulWidget {
  const ProfessionalPage({super.key});

  @override
  State<ProfessionalPage> createState() => _ProfessionalPageState();
}

class _ProfessionalPageState extends State<ProfessionalPage> {
  final List<String> imageAssetPaths = [
    'https://www.evervue.com/evervue/assets/product/lux/banner/salm-energy-efficient-mirror.jpg',
    'https://www.evervue.com/evervue/assets/product/professional/banner/professional-salon-lighted-mirror.jpg',
    'https://www.evervue.com/evervue/assets/product/lux/banner/professional-custom-lighted-mirror.jpg',
    'https://www.evervue.com/evervue/assets/product/hollywood/banner/vanity-hollywood-lighted.jpg',
    'https://www.evervue.com/evervue/assets/product/professional/banner/custom-mirror-for-salon.jpg',
    'https://www.evervue.com/evervue/assets/product/professional/banner/vanity-mirror-for-professional.jpg',
    'https://www.evervue.com/evervue/assets/product/allure/banner/grand-mirrors-allure.jpg',
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                            'This is Grand Mirrors',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20,
                              height: 1.5,
                            ),
                          ),
                        ),
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
                                'https://www.evervue.com/evervue/assets/product/professional/professional.jpg',
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
                            'With over 20 years of experience in the mirrors and technology industry, Grand Mirrors has established itself as a trusted partner for salon owners seeking highly customizable mirror solutions. Since 2001, we have been dedicated to empowering professionals to fully express their creativity and enhance their salon spaces.',
                            style: TextStyle(
                              height: 1.5,
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
                      'https://www.evervue.com/evervue/assets/product/professional/01.jpg',
                      'https://www.evervue.com/evervue/assets/product/professional/02.jpg',
                      'https://www.evervue.com/evervue/assets/product/professional/03.jpg',
                      'https://www.evervue.com/evervue/assets/product/professional/04.jpg',
                      'https://www.evervue.com/evervue/assets/product/professional/05.jpg',
                      'https://www.evervue.com/evervue/assets/product/professional/06.jpg',
                      'https://www.evervue.com/evervue/assets/product/professional/07.jpg',
                      'https://www.evervue.com/evervue/assets/product/professional/08.jpg',
                      'https://www.evervue.com/evervue/assets/product/professional/09.jpg'
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
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Column(
                      children: <Widget>[
                        const Divider(
                          height: 10,
                          thickness: 1,
                          color: Color(0xff9F9081),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Text(
                            'Presenting Grand Mirrors Lux Pro',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 30),
                          child: const Text(
                            'Experience the unparalleled beauty and functionality of the Grand Mirrors LUX Pro. These unique professional vanity mirrors are designed to transform your salon experience with their exceptional features:',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        const VideoPlayerWidget(
                          source:
                              'assets/grandmirrors/images/product/professional/custom-lighted-mirror-led-to-measure.mp4',
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 25),
                          child: const Text(
                            'Thinner & Lighter Design:',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                            'The LUX Pro mirrors are now more streamlined, making them easier to install and integrate into your salon space.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 25),
                          child: const Text(
                            'Enhanced Light Efficiency:',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                            'Our advanced technology ensures that the LUX Pro mirrors provide a more efficient, evenly distributed lighting experience.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 25),
                          child: const Text(
                            'Increased Brightness:',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(bottom: 30),
                          child: const Text(
                            'The LUX Pro mirrors boast a superior level of brightness, ensuring that you and your clients have the perfect lighting conditions for any service.\n\n'
                            'Upgrade your salon with the Grand Mirrors LUX Pro and discover the difference that our innovative, customizable mirror solutions can make in your professional space.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Text(
                            'Now also available with Philips LED Lights',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),
                        ),
                        PhilipsLEDLight(
                            philipslightImages: philipsLedLightPaths),
                        const Divider(
                          height: 10,
                          thickness: 1,
                          color: Color(0xff9F9081),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Text(
                            'Grand Mirrors: The Perfect Choice for Your Salon',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text(
                            'Elevate your salon experience with Grand Mirrors, designed with premium-quality mirror glass, exceptional reflectivity, and corrosion resistance. Equipped with reliable LED light technology, Grand Mirrors not only enhance your salon\ns ambiance but also provide an excellent opportunity for business growth.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Text(
                            'Tailored to Your Needs',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 20, bottom: 30),
                          child: const Text(
                            'Grand Mirrors are highly adaptable, designed to cater to your unique requirements. Whether you need a single mirror or over a thousand, we are committed to meeting and exceeding your expectations consistently.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.5,
                            ),
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
                              'https://www.evervue.com/evervue/assets/product/professional/08.jpg',
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Text(
                            'Dream Cuts collaborated with Grand Mirrors to design a magnificent salon that exudes luxury and sophistication. Our mirrors were the perfect addition to create a stunning and functional space for their clients.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(bottom: 30),
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
                          'https://www.evervue.com/evervue/assets/product/professional/hollywood-salon-lights-for-mirror.jpg',
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
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
                                      const GrandMirrorsPage()),
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
