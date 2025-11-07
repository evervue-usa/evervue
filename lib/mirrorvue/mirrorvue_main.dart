// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:evervue/mirrorvue/imagetext_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/mirrorvue/mirror_glass.dart';
import 'package:evervue/mirrorvue/slider_noind.dart';
import 'package:evervue/templates/image_slider.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MirrorVueHomePage extends StatefulWidget {
  const MirrorVueHomePage({super.key});

  @override
  State<MirrorVueHomePage> createState() => _MirrorVueHomePageState();
}

class _MirrorVueHomePageState extends State<MirrorVueHomePage> {
  int selectedIndex = 0;

  final List<Map<String, String>> mountOptions = [
    {
      'title': 'Standard Wall-Mount',
      'description':
          'Each MirrorVue comes equipped with standard wall-mount rails on the back of the mirror, allowing you to securely hang your MirrorVue to the mounting strip attached to your wall. Depending on the size of your MirrorVue, there will be either 2 or 4 mounting strips.',
      'videoUrl':
          'assets/mirrorvue/resources/highlights/custom-Mirror-TV-wall-mount.mp4'
    },
    {
      'title': 'Magnet Wall-Mount',
      'description':
          'If your space does not allow for the 1" (2.54 cm) lift needed for a regular wall-mount, the magnet mount is an excellent alternative. This option enables you to position the mirror under a cabinet without any gap between the mirror and the cabinet, ensuring a sleek finish.',
      'videoUrl':
          'assets/mirrorvue/resources/highlights/custom-Mirror-magnet-mount.mp4'
    },
    {
      'title': 'Recessed Wall-Mount',
      'description':
          'For a seamless integration, choose the Recessed Wall-Mount. This option allows the TV Unit section of the MirrorVue to be recessed into the wall or another flat surface. The mirror glass rests flush on the wall surface, secured by a sturdy, large amount of Velcro attached to the rear of the MirrorVue.',
      'videoUrl':
          'assets/mirrorvue/resources/highlights/MirrorVue-OLED-TV-recessed-mount.mp4'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool ifScreen = screenWidth > 700;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: screenWidth,
                    height: screenHeight,
                    child: const MirrorVueBanner(
                      imagePaths: [
                        'https://www.evervue.com/evervue/assets/4k-mirror-tv-slider-banner.jpg',
                        'https://www.evervue.com/evervue/assets/custom-TV-mirror-banner.jpg',
                        'https://www.evervue.com/evervue/assets/MirorVue-OLED-mirror-banner.jpg'
                      ],
                    ),
                  ),
                  Positioned(
                    top: screenHeight * .4,
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 1000),
                      width: screenWidth,
                      child: Align(
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
                          height: screenHeight * .1,
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/logo-big.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  constraints: const BoxConstraints(maxWidth: 700),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'MirrorVue: The Perfect Mirror TV',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 60,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Welcome to MirrorVue, where elegance meets innovation. Our cutting-edge mirror TV seamlessly integrates into any living space. A stunning 4K OLED TV when on, a beautiful mirror when off.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/mirrorvue/resources/highlights/Vanishing-custom-TV-Mirror.mp4',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'K11 Musea Chooses MirrorVue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const ImageCarousel(
                          imagePaths: [
                            'https://www.evervue.com/evervue/assets/best-magic-4k-TV-Mirror.jpg',
                            'https://www.evervue.com/evervue/assets/custom-TV-Mirror-K11.jpg',
                            'https://www.evervue.com/evervue/assets/MirrorVue-Custom-Mirror-round-shape.jpg',
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Sun Resorts Chooses MirrorVue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 60,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'MirrorVue installed in the guest room at the Sun Resorts, Mauritius.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
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
                                'https://www.evervue.com/evervue/assets/suns-resorts-mauritius-OLED-custom-TV.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Solaire Casino and Resort Chooses MirrorVue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 60,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'MirrorVue installed in the guest bathroom of Solaire Casino & Resort in Manila, Philippines.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
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
                                'https://www.evervue.com/evervue/assets/solaire-bathub-Mirror-Television.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'The Ritz-Carlton in Mexico City Chooses MirrorVue Mirror TV',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 60,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'MirrorVue installed at the Ritz-Carlton Hotel\'s Restaurant in Mexico City.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
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
                                'https://www.evervue.com/evervue/assets/ritz-carlton-mexico-Custom-Mirror-TV.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Transform Your Space',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'MirrorVue is the perfect blend of mirror and television. When the television is turned off, it serves as a beautiful, high-quality mirror that enhances the elegance of your home. With just a simple click, however, it transforms into a 4K OLED TV, offering a stunning viewing experience.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Experience a Luxurious Mirror in Your Home',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Upgrade your living area with the MirrorVue mirror TV and witness the awe-inspiring transition from a beautiful mirror to a high-performance 4K television. Our innovative TV mirror ensures that you never have to compromise between aesthetics and functionality. With customization options available, MirrorVue allows you to create a truly one-of-a kind mirror TV that complements your interior design.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Elevate Your Décor With Television Mirror',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Our MirrorVue mirror TV is a beautiful addition to any room. Its sleek, custom design allows it to blend effortlessly with your existing décor, creating a unique focal point that looks elegant. Choose from an array of customizable frames to match your personal style and make a statement.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Experience the Future of Home Entertainment With the Integration of a Stunning Custom Mirror and 4K OLED TV.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'At MirrorVue, we are dedicated to providing an unparalleled viewing experience. Our TV mirror features the latest technology, including ultra-high-definition displays, smart TV capabilities, and seamless integration with your home automation system. Discover a new era of entertainment with MirrorVue.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const ImageCarousel(
                          imagePaths: [
                            'https://www.evervue.com/evervue/assets/mirror-tv-bathroom.jpg',
                            'https://www.evervue.com/evervue/assets/MirrorVue-OLED-custom-TV.jpg',
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Design Your Dream MirrorVue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 60,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Unleash your creativity and personalize your MirrorVue to reflect your unique style and taste. We offer a wide range of customization options to ensure that your MirrorVue is not just a piece of technology. But a stunning work of art that complements your home décor.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Operate It Your Way',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 60,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'MirrorVue is designed with you in mind, ensuring that it integrates seamlessly with your preferred operating system and control preferences. Experience effortless control and convenience with our user-friendly setup and versatile compatibility options.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x50000000),
                                        blurRadius: 3,
                                        spreadRadius: 2)
                                  ]),
                              width: ifScreen
                                  ? (700 * 0.20)
                                  : (screenWidth * 0.20),
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
                                      'https://www.evervue.com/evervue/assets/MirrorVue-Mirror-TV-Operating-system-apple.png'),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x50000000),
                                        blurRadius: 3,
                                        spreadRadius: 2)
                                  ]),
                              width: ifScreen
                                  ? (700 * 0.20)
                                  : (screenWidth * 0.20),
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
                                      'https://www.evervue.com/evervue/assets/MirrorVue-Mirror-TV-Operating-system-android.png'),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x50000000),
                                        blurRadius: 3,
                                        spreadRadius: 2)
                                  ]),
                              width: ifScreen
                                  ? (700 * 0.20)
                                  : (screenWidth * 0.20),
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
                                      'https://www.evervue.com/evervue/assets/MirrorVue-Mirror-TV-Operating-system-linux.png'),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x50000000),
                                        blurRadius: 3,
                                        spreadRadius: 2)
                                  ]),
                              width: ifScreen
                                  ? (700 * 0.20)
                                  : (screenWidth * 0.20),
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
                                      'https://www.evervue.com/evervue/assets/MirrorVue-Mirror-TV-Operating-system-google.png'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Seamless Integration',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 60,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Our team of experts will configure your MirrorVue vanishing television to work flawlessly with your choice of operating systems, including Android, tvOS, Windows, and more. This seamless integration allows for easy navigation and a truly personalized viewing experience.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Made-To-Measure Perfection',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'At MirrorVue, customization is our forte. We understand that every home and every room is unique, which is why we offer custom-made mirror TVs to meet your specific needs. Each MirrorVue is meticulously crafted, incorporating a mirror, television, and mount, ensuring a perfect fit for any project.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Bespoke Solutions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Your MirrorVue journey begins with a thorough consultation, where we discuss your requirements, preferences, and design goals. Our experts will guide you through the process, helping you choose the ideal mirror finish, frame, and technical specifications to create a truly bespoke solution.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Unlimited Possibilities',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 60,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'No project is too challenging for us. Our skilled team is ready to create your dream MirrorVue in any size, shape, or quantity you require. Whether you need a single statement piece for your living room or bathroom or multiple custom TV mirrors for a commercial project, we are equipped to bring your vision to life.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Are mirror TVs any good?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Mirror TVs are a top choice for anyone who values both style and function in their home decor. TV mirrors combine the practicality of a television with the sleek look of a mirror, adding a touch of luxury and versatility to any room. MirrorVue offers stunning 4K resolution, ensuring a viewing experience that is both aesthetically pleasing and technologically advanced.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/mirrorvue/resources/highlights/mirrorvue-vanishing-tv-mirror-size-options-for-mobile.mp4',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Mirror Glass Choices:\n'
                          'Find Your Perfect Match',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 50,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'At MirrorVue, we take pride in our exclusive, proprietary mirror glass technology. With over 20 years of refinement, we now offer the highest quality mirror glass on the market. Discover our wide array of options, each designed to cater to specific applications and aesthetics.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const MirrorGlassSection(),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Mirror TV Sizes',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 50,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text(
                          '15.6” (720p), 22” (Full HD), 28” (4K), 32” (4K), 40” (4K), 50” (4K), 55" (4K OLED), 60” (4K), 65" (4K OLED), 75” (4K), 85” (4K), 100” (4K)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Here, we display all different TV sizes and how they look on a mirror measuring 120"W x 65"H.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/mirrorvue/resources/highlights/mirrorvue-custom-mirror-tv-mobile.mp4',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Locate Television Anywhere in the Mirror',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 50,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'MirrorVue puts you in control, offering the flexibility to position your TV anywhere you desire or even incorporate multiple TVs within a single mirror.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/mirrorvue/resources/highlights/custom-mirror-TV-location.mp4',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Custom-Shapes',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Experiment with your television like never before with MirrorVue\'s custom-shaped mirror TVs. We will create your unique Mirror based on your specific measurements and customizations, delivering a truly one-of-a-kind product.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Color(0x50000000),
                                blurRadius: 20,
                                spreadRadius: 3)
                          ]),
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
                                'https://www.evervue.com/evervue/assets/shape-custom-best-Mirror-TV.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Mounting Options',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              mountOptions[selectedIndex]['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              mountOptions[selectedIndex]['description']!,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 500),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return FadeTransition(
                                  opacity: animation, child: child);
                            },
                            child: Container(
                              key: ValueKey(
                                  mountOptions[selectedIndex]['videoUrl']),
                              margin: const EdgeInsets.only(top: 30),
                              child: VideoPlayerWidget(
                                key: ValueKey(
                                    mountOptions[selectedIndex]['videoUrl']),
                                source: mountOptions[selectedIndex]
                                    ['videoUrl']!,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: ifScreen
                                    ? (700 * 0.28)
                                    : (screenWidth * 0.3),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 0;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 2.5),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: selectedIndex == 0
                                                  ? const Color(0xffc99e62)
                                                  : const Color(0xff707070),
                                              width: 2.0,
                                            ),
                                          ),
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
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                              imageUrl:
                                                  'https://www.evervue.com/evervue/assets/wall-mount-custom-Mirror-TV-standard.jpg')),
                                      Text('Standard Wall-Mount',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: selectedIndex == 0
                                                  ? const Color(0xffc99e62)
                                                  : const Color(0xff707070)))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: ifScreen
                                    ? (700 * 0.28)
                                    : (screenWidth * 0.3),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 1;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 2.5),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: selectedIndex == 1
                                                ? const Color(0xffc99e62)
                                                : const Color(0xff707070),
                                            width: 2.0,
                                          ),
                                        ),
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
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                            imageUrl:
                                                'https://www.evervue.com/evervue/assets/wall-mount-custom-Mirror-TV-magnet.jpg'),
                                      ),
                                      Text('Magnet Wall-Mount',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: selectedIndex == 1
                                                  ? const Color(0xffc99e62)
                                                  : const Color(0xff707070)))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: ifScreen
                                    ? (700 * 0.28)
                                    : (screenWidth * 0.3),
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = 2;
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 2.5),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: selectedIndex == 2
                                                  ? const Color(0xffc99e62)
                                                  : const Color(0xff707070),
                                              width: 2.0,
                                            ),
                                          ),
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
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                              imageUrl:
                                                  'https://www.evervue.com/evervue/assets/wall-mount-custom-Mirror-TV-recessed-built-in.jpg'),
                                        ),
                                        Text(
                                          'Recessed Wall-Mount',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: selectedIndex == 2
                                                  ? const Color(0xffc99e62)
                                                  : const Color(0xff707070)),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Accessories & Options:\nEnhance Your MirrorVue Experience',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Elevate your MirrorVue mirror TV with our range of accessories and options designed to add style, functionality, and convenience to your home.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  )),
              const ImageAndTextCarousel(
                imagePaths: [
                  'https://www.evervue.com/evervue/assets/best-Mirror-TV-LED.jpg',
                  'https://www.evervue.com/evervue/assets/Evervue-custom-TV-Mirror-backlight-LED.jpg',
                  'https://www.evervue.com/evervue/assets/Evervue-OLED-Mirror-TV-hollywood-vanity.jpg'
                ],
                titles: [
                  'Integrated LED Light',
                  'Backlight',
                  'Hollywood Lights'
                ],
                descriptions: [
                  'Upgrade your MirrorVue with our cutting-edge integrated LED lights. Our superior lighting technology is up to three times brighter than other mirrors and includes a diffuser to evenly distribute the light, resulting in elegant and efficient illumination. Choose from a variety of light color options to suit your preference.',
                  'Backlight enhances the ambiance of your room by adding a backlight to your tv mirror. We offer a range of options, from cold to warm to colorful, allowing you to create the perfect mood for your space.',
                  'Upgrade your custom mirror TV into a glamorous make up mirror with our modern take on the classic vanity hollywood mirror. We have updated this timeless design by replacing traditional bulbs with energy-efficient 3-watt alternatives. '
                ],
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  constraints: const BoxConstraints(maxWidth: 700),
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Frames: Customize Your MirrorVue',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 50,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Add the perfect finishing touch to your MirrorVue custom mirror with our extensive range of frames, designed to suit any décor and personal style.\n',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: "Explore Our ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  height: 1.5,
                                  letterSpacing: 0.0,
                                  fontFamily: 'Century Gothic'),
                            ),
                            TextSpan(
                              text: "Frames",
                              style: const TextStyle(
                                color: Color(0xffc99e62),
                                fontSize: 14,
                                height: 1.5,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Century Gothic',
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  const url =
                                      'https://www.mirrorvue.com/frames/';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                            ),
                            const TextSpan(
                              text:
                                  ". Enhance your space with a MirrorVue that is uniquely tailored to your personal style, blending luxury and technology seamlessly.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  height: 1.5,
                                  letterSpacing: 0.0,
                                  fontFamily: 'Century Gothic'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ])),
              ImageAndTextCarousel(
                imagePaths: const [
                  'https://www.evervue.com/evervue/assets/best-custom-Mirror-TV-mosaic-frame.jpg',
                  'https://www.evervue.com/evervue/assets/custom-Mirror-TV-art-frame-tiles.jpg',
                  'https://www.evervue.com/evervue/assets/custom-smart-TV-mirror-frame-wood-leather-aluminum.jpg'
                ],
                titles: const [
                  'Mediterranean Frames',
                  'Mosaic Frames',
                  'MirrorVue Frames'
                ],
                descriptions: const [
                  'Discover a new way to enhance your mirror with our Mediterranean Frames. With 16 unique styles to choose from, these frames add a mediterranean vibe to your room.',
                  'Experience the beauty of our meticulously handcrafted mirror television mosaic frames, where each piece is carefully arranged to create the perfect pattern, ensuring a truly one-of-a-kind look for your MirrorVue.',
                  'Explore our vast collection of over 80 stylish designer frames to perfectly complement your mirror TV. From sleek, modern designs to traditional, ornate styles, we have a frame to suit every room.'
                ],
                buttons: [
                  [
                    InkWell(
                      onTap: () => _launchUrl('www.mirrorvue.com/frames'),
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xffc99e62),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          'Mediterranean Frames',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                  [
                    InkWell(
                      onTap: () => _launchUrl('www.mirrorvue.com/frames'),
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xffc99e62),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          'Mosaic Frames',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                  [
                    InkWell(
                      onTap: () => _launchUrl('www.mirrorvue.com/frames'),
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xffc99e62),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          'MirrorVue Frames',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  constraints: const BoxConstraints(maxWidth: 700),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Cutouts: Precision Meets Creativity',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'At MirrorVue, we understand the importance of customization and cater to your unique design needs. Our state-of-the-art CNC automated production process allows us to create precise cutouts in the mirror for faucets, light fixtures, or any other elements you may require.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const ImageCarousel(
                          imagePaths: [
                            'https://www.evervue.com/evervue/assets/bathroom-mirror-tv-sink.jpg',
                            'https://www.evervue.com/evervue/assets/custom-mirror-tv-fireplace-living-room.jpg'
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Whether you require a cutout for a specific fixture or a unique design element, our team of skilled professionals is ready to help you achieve the perfect mirror TV. We meticulously craft each cutout to ensure exceptional precision and a flawless finish, ensuring that your MirrorVue is a luxurious addition to your living room or bathroom.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text(
                          'Our custom cutouts enable seamless integration of your MirrorVue within your home. By accommodating faucets, light fixtures, or other elements, we ensure that your MirrorVue becomes an integral part of your living room or bathroom, blending seamlessly with your existing interior design.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Smart Touch Mirrors: Innovation at Your Fingertips',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 50,
                        height: 2,
                        color: const Color(0xffc99e62),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Upgrade your MirrorVue with our new Smart Touch feature. This touchscreen feature allows you to navigate your TV mirror in unprecedented ways. Whether it\'s selecting a movie, shopping online, presenting your presentation at work, or staying connected on social media, all of this is now possible with just a touch of your finger. Using your mirror TV is now as simple and easy as navigating your phone. Smart Touch is exclusively compatible with our Android operating system. ',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Color(0x50000000),
                                blurRadius: 20,
                                spreadRadius: 3)
                          ]),
                          margin: const EdgeInsets.only(top: 30),
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
                                'https://www.evervue.com/evervue/assets/custom-smart-touchscreen-tv.jpg',
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _launchUrl(String link) async {
  var url = 'https://$link';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
