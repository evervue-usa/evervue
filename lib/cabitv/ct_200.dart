import 'package:cached_network_image/cached_network_image.dart';

import 'package:evervue/templates/image_slider.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';

class CT200Page extends StatefulWidget {
  const CT200Page({super.key});

  @override
  State<CT200Page> createState() => _CT200PageState();
}

class _CT200PageState extends State<CT200Page> {
  int selectedIndex = 0;
  final List<String> images = [
    'https://www.evervue.com/evervue/assets/cabinet-tv-brushed-stainless-side-trim.jpg',
    'https://www.evervue.com/evervue/assets/white-side-trim-cabinet-televisions.jpg',
    'https://www.evervue.com/evervue/assets/cool-tv-black-side-trim-finish.jpg',
  ];

  final List<String> labels = [
    'Brushed\nStainless',
    'White',
    'Black',
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: screenWidth,
                    child: const VideoPlayerWidget(
                      source:
                          'assets/cabitv/resources/home/smart-cabinet-tv-setup.mp4',
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: const EdgeInsets.all(10),
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
                              'https://www.evervue.com/evervue/assets/best-hd-smart-kitchen-tv.jpg',
                          width: screenWidth * 0.9,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: const Text(
                          'Customized Kitchen Entertainment: The CabiTV CT-200',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 15),
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
                                  'https://www.evervue.com/evervue/assets/check.jpg',
                              width: 18,
                              height: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 15),
                                  child: const Text(
                                    'Experience unparalleled kitchen entertainment with the CabiTV CT-200, a made-to-measure cabinet TV designed to fit seamlessly into your kitchen. Bringing the comforts of your living room to your culinary space, the CabiTV CT-200 comes with Android pre-installed, providing access to a wealth of smart functions and easy updates.',
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 15),
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
                                  'https://www.evervue.com/evervue/assets/check.jpg',
                              width: 18,
                              height: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 15),
                                  child: const Text(
                                    'The CabiTV CT-200 is crafted to fit your kitchen cabinet perfectly. Simply provide us with the exact measurements of your cabinet, and we\'ll deliver your custom-sized CabiTV CT-200, ready for installation.',
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 15),
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
                                  'https://www.evervue.com/evervue/assets/check.jpg',
                              width: 18,
                              height: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 15),
                                  child: const Text(
                                    'Crafted from high-quality brushed stainless steel and featuring a sleek, slim bezel, the CabiTV CT-100 is a stunning addition to any kitchen. Its timeless design complements a wide range of interior styles, while the durable construction promises years of uninterrupted enjoyment.',
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
                            width: screenWidth,
                            fit: BoxFit.cover,
                            imageUrl:
                                'https://www.evervue.com/evervue/assets/sophisticated-smart-kitchen-tv.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Mouth-Watering Technology',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Savor Every Detail with the CabiTV CT-200. Featuring a 4K Ultra HD screen with stunning picture quality, the CabiTV CT-200 delivers exceptionally sharp resolution that brings every image to life. Immerse yourself in a visual feast as you explore your favorite content with unparalleled clarity and detail.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/cabitv/resources/home/kitchen-cabinet-door-tv.mp4',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Effortless Installation: Set Up Your CabiTV CT-200 in No Time',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'The CabiTV CT-200 is designed with your convenience in mind, ensuring a stress-free installation process. Your kitchen TV will arrive ready to install, requiring only a screwdriver to complete the setup in under 30 minutes. (This product uses Blum® brackets and we recommend to consult a professional installer).\n\nOnce your CabiTV CT-200 is securely mounted, simply connect it to power and Wi-Fi, and you\'re all set to start cooking while enjoying your favorite TV shows, news, or entertainment.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/cabitv/resources/home/easy-to-install-smart-kitchen-tv.mp4',
                          )),
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: const Text(
                  'Where to use?',
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const ImageCarousel(
                  imagePaths: [
                    'https://www.evervue.com/evervue/assets/sleek-design-kitchen-cabinet-tv.jpg',
                    'https://www.evervue.com/evervue/assets/elegant-kitchen-cabinet-smart-tv.jpg',
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Ordering Your Customized CabiTV is a Breeze',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Follow these easy steps to order your personalized CabiTV CT-200, and enjoy a seamless, hassle-free experience from start to finish:',
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
                                'https://www.evervue.com/evervue/assets/made-to-measure-kitchen-cabinet-tv.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Color(0xfff5c740),
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                'Enter Your Cabinet Dimensions',
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                'Provide us with your cabinet\'s measurements, and we\'ll have all the necessary information to start crafting your custom CabiTV-CT200.',
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
                                      'https://www.evervue.com/evervue/assets/kitchen-cabinet-smart-tv-sizes.jpg',
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Color(0xfff5c740),
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                'Recommended TV Sizes Based on Cabinet Size',
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                'We\'ll suggest suitable TV sizes based on your cabinet\'s dimensions to ensure the perfect fit for your kitchen space. Here\'s a list of recommended TV sizes for different cabinet measurements:',
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
                                      'https://www.evervue.com/evervue/assets/best-rated-smart-tv-with-free-quote.jpg',
                                  fit: BoxFit.cover,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Color(0xfff5c740),
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                'Receive a Customized Quotation and Pre-Production Sketch',
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  const Text(
                                    'Once we have all the required details, we\'ll provide you with a comprehensive quotation that includes all costs. Additionally, we\'ll send you a pre-production sketch so you can visualize your custom CabiTV-CT200 with its precise specifications.',
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xfff5c740),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 20),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),
                                    child: const Text(
                                      'GET QUOTE',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Personalize Your CabiTV: Side Trim Color Options',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Customize your CabiTV to complement your kitchen\'s unique style by choosing the perfect side trim color and handle option. This ensures that your CabiTV blends seamlessly into your existing kitchen design.\n\nSide Trim Color Options: Select from a variety of finishes to personalize your CabiTV\'s side trim color. Explore the options we offer below to find the perfect match for your kitchen:',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
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
                              imageUrl: images[selectedIndex],
                              width: screenWidth,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(images.length, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: selectedIndex == index
                                                ? const Color(0xfff5c740)
                                                : Colors.transparent,
                                            width: 4,
                                          ),
                                        ),
                                        child: ClipOval(
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
                                            imageUrl: images[index],
                                            width: 70,
                                            height: 70,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      SizedBox(
                                        height: 40,
                                        child: Text(
                                          labels[index],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'CabiTV CT-200 Handle Choices',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'The CabiTV CT-200 comes standard with a stainless steel brushed finish handle. However, we understand the importance of cohesive design in your kitchen, so we offer additional options:',
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    color: Color(0xfff5c740),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: Text(
                                    'Order your CabiTV CT-200 without a handle if you prefer to use your own matching kitchen handle.',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    color: Color(0xfff5c740),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: Text(
                                    'Send us your preferred handle, and we\'ll attach it to your CabiTV CT-200 for a perfectly coordinated look.',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                                'https://www.evervue.com/evervue/assets/kitchen-cabinet-tv-handle.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Touchscreen: Intuitive Control at Your Fingertips',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'The CabiTV CT-200 is equipped with a high-quality touchscreen, providing effortless control over your kitchen TV. This user-friendly interface allows you to seamlessly access the smart functions of your CabiTV, ensuring you get the most out of your personalized kitchen entertainment experience.',
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
                                'https://www.evervue.com/evervue/assets/touchscreen-kitchen-cabinet-smart-tv.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'High-Quality Audio: Immerse Yourself in Exceptional Sound',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'The CabiTV CT-200 features premium internal speakers that elevate your kitchen TV experience. Enjoy crystal clear audio while watching your favorite shows or exploring new recipes, making your time in the kitchen even more enjoyable.',
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
                            width: screenWidth,
                            imageUrl:
                                'https://www.evervue.com/evervue/assets/cabinet-tv-with-internal-speakers-hd.jpg',
                            fit: BoxFit.cover,
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Your All-in-One Kitchen Entertainment Hub: The CabiTV CT-200',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30, bottom: 30),
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
                            width: screenWidth,
                            imageUrl:
                                'https://www.evervue.com/evervue/assets/tv-kitchen-under-cabinet-with-wifi.jpg',
                            fit: BoxFit.cover,
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Safety First: Enjoy Worry-Free Kitchen Entertainment with CabiTV CT-200',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'At CabiTV, we understand the importance of safety in your kitchen. That\'s why the CabiTV CT-200 is designed with a low-voltage, 12-24 volt power supply, ensuring that your kitchen remains a safe and worry-free environment while you enjoy your TV.',
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
                            width: screenWidth,
                            imageUrl:
                                'https://www.evervue.com/evervue/assets/low-voltage-kitchen-good-quality-tv.jpg',
                            fit: BoxFit.cover,
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Smart and Waterproof Remote Control: The Ultimate in Convenience for Your CabiTV CT-200',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Maximize the potential of your CabiTV CT-200 with our innovative Zepp Remote. Effortlessly navigate through your Smart TV features using the integrated keyboard, ensuring seamless control over your entertainment options. Designed with practicality in mind, the Zepp Remote comes with a waterproof skin and a suction cup holder, allowing you to securely attach it to almost any surface in your kitchen.',
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
                                'https://www.evervue.com/evervue/assets/universal-remote-for-smart-tv.jpg',
                            fit: BoxFit.cover,
                          )),
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
                                'https://www.evervue.com/evervue/assets/best-quality-cabinet-tv-with-remote.jpg',
                            fit: BoxFit.cover,
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Parts',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30, bottom: 30),
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
                            width: screenWidth,
                            imageUrl:
                                'https://www.evervue.com/evervue/assets/tv-for-kitchen-best-to-buy.jpg',
                            fit: BoxFit.cover,
                          )),
                    ],
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SpecsViewer(
                                pdfTitle: 'Mirror Specifications (PDF)',
                                pdfSpecs:
                                    'assets/specification/cabitv-200-specification-table.pdf',
                              )),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                    width: screenWidth,
                    color: Colors.amber,
                    child: const Text(
                      'View Mirror Specifications',
                      textAlign: TextAlign.center,
                    ),
                  )),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
