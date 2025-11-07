import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'model_hos.dart';

class HospitalityPage extends StatefulWidget {
  const HospitalityPage({super.key});

  @override
  State<HospitalityPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HospitalityPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imageAssetPaths = [
      'https://www.evervue.com/evervue/assets/product/eclipse/banner/backlit-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/hospitality/banner/hospitality-lighted-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/lux/banner/bespoke-bathroom-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/hospitality/banner/white-lighted-custom-mirror.jpg',
      'https://www.evervue.com/evervue/assets/product/deco/banner/vanity-mirror-deco.jpg',
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
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Column(
                      children: [
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'This is Grand Mirrors',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Century Gothic',
                              fontSize: 20,
                              height: 1.5,
                            ),
                          ),
                        ),
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
                                'https://www.evervue.com/evervue/assets/product/hospitality/hospitality.png',
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
                          margin: const EdgeInsets.only(top: 15, bottom: 25),
                          child: const Text(
                            'Grand Mirrors has established itself as a leading bathroom mirror supplier for numerous prestigious hotels, resorts, high-end condominium projects, and luxury estates around the world. The company is renowned for its commitment to excellence on a global scale.\n\n'
                            'Over the past decades, Grand Mirrors has successfully completed a wide range of hospitality projects, consistently pushing the boundaries of design and technology to develop mirrors that are not only visually stunning but also highly functional. The company\'s dedication to innovation ensures that their products continue to meet the evolving needs and preferences of discerning clientele worldwide.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        const ModelHospitality(),
                        Container(
                          margin: const EdgeInsets.only(top: 30.0),
                          child: const Divider(
                            height: 10,
                            indent: 15,
                            endIndent: 15,
                            thickness: 1,
                            color: Color(0xff9F9081),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 20),
                          child: Center(
                            child: Text(
                              'Our 5-star Service Commitment',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          alignment: Alignment.center,
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
                                'https://www.evervue.com/evervue/assets/product/hospitality/stars.png',
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: const Text(
                            'At Grand Mirrors, our top priority is to place the needs of our customers at the heart of everything we do. We understand the importance of exceptional service in the hospitality industry and strive to exceed expectations.\n\n'
                            'Our mission is to support your hospitality business in reaching its full potential by providing superior products and services that meet and surpass your requirements. In every aspect of your operation, we are committed to delivering the highest level of quality and customer satisfaction, ensuring that your guests enjoy a truly memorable experience.',
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
                              'https://www.evervue.com/evervue/assets/product/hospitality/banner/08.jpeg',
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 50, bottom: 20),
                          child: Center(
                            child: Text(
                              'Grand Mirrors Solves the Restroom Mirrors and Lighting Challenge',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: const Text(
                            'Restrooms in restaurants often face challenges in finding the perfect mirror and lighting solutions due to limited space. Grand Mirrors provides the flexibility needed to find the ideal size mirror and the most suitable illumination for your space. With their wide range of customizable options and innovative designs, Grand Mirrors can help you overcome these challenges, enhancing the aesthetic and functionality of even the most constrained restrooms.',
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
                              'https://www.evervue.com/evervue/assets/product/hospitality/banner/09.jpeg',
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 50, bottom: 20),
                          child: Center(
                            child: Text(
                              'Any Size, Any Shape',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5,
                              ),
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
                              'https://www.evervue.com/evervue/assets/product/hospitality/banner/10.jpeg',
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: const Text(
                            'Grand Mirrors offers unparalleled customization with mirrors available in any size and shape, accommodating up to 23 feet by 8 feet. Each mirror produced boasts exceptional precision, owing to the use of high-precision automatic glass-cutting machines. This ensures that you receive a perfectly tailored mirror to suit your unique space and design preferences.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 50, bottom: 20),
                          child: Center(
                            child: Text(
                              'We Are Flexible',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5,
                              ),
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
                              'https://www.evervue.com/evervue/assets/product/hospitality/banner/11.jpeg',
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: const Text(
                            'Grand Mirrors is dedicated to catering to your unique requirements. We embrace orders of all quantities and sizes, as we enjoy rising to the challenge. Whether you need one mirror or 1,200 mirrors, Grand Mirrors is your go-to choice because we can handle it all.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 50, bottom: 20),
                          child: Center(
                            child: Text(
                              'Modern Production Facility',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5,
                              ),
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
                              'https://www.evervue.com/evervue/assets/product/hospitality/banner/12.jpeg',
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: const Text(
                            'Grand Mirrors products are exclusively manufactured in two fully-owned and operated modern production facilities, ensuring full compliance with local regulations. This guarantees the high quality and reliability of our mirrors while adhering to the highest industry standards.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        )
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
