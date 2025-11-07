import 'package:cached_network_image/cached_network_image.dart';

import 'package:evervue/templates/pdf_viewer.dart';
import 'package:flutter/material.dart';
import '../templates/video_player.dart';

class CT100Page extends StatefulWidget {
  const CT100Page({super.key});

  @override
  State<CT100Page> createState() => _CT100PageState();
}

class _CT100PageState extends State<CT100Page> {
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
                          'assets/cabitv/resources/home/kitchen-tv-under-cabinet-pan-motion-video.mp4',
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
                          'Welcome to CabiTV.com: Experience Your Kitchen Like Never Before',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Introducing the CabiTV CT-100, an exceptional kitchen TV that combines unparalleled functionality with an exquisite design, enhancing your culinary space from every angle.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 23),
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
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    'Swivel and Pan Movement Technology: Optimal Viewing at Every Turn',
                                    textAlign: TextAlign.left,
                                    maxLines: 3,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                    'The CabiTV CT-100 boasts an advanced swivel and pan movement technology that ensures you\'ll always have the perfect viewing angle, no matter where you are in your kitchen. Enjoy your favorite cooking shows, news, or entertainment without missing a beat.',
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
                            margin: const EdgeInsets.only(top: 23),
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
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    'Space-Saving Design: Seamless Integration into Your Kitchen',
                                    textAlign: TextAlign.left,
                                    maxLines: 3,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                    'Our specially designed bracket allows the CabiTV CT-100 to fold away effortlessly, leaving a mere 1.3” (33mm) gap between the TV and your cabinet. This slim and unobtrusive design ensures a seamless integration into any kitchen, without compromising on space or style.',
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
                            margin: const EdgeInsets.only(top: 23),
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
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    'Timeless Aesthetic: Elegance Meets Durability',
                                    textAlign: TextAlign.left,
                                    maxLines: 3,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                    'Crafted from high-quality brushed stainless steel and featuring a sleek, slim bezel, the CabiTV CT-100 is a stunning addition to any kitchen. Its timeless design complements a wide range of interior styles, while the durable construction promises years of uninterrupted enjoyment.\n\nDiscover the CabiTV CT-100, and experience your kitchen like never before. Transform your culinary space into an entertainment hub with a TV that is as beautiful as it is functional. Browse our website to learn more about the CabiTV CT-100, and bring the future of kitchen entertainment to your home today.',
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
                                'https://www.evervue.com/evervue/assets/optimal-viewing-best-tv-to-buy.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Effortless Installation: Bring CabiTV CT-100 Home in Minutes',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 60,
                        height: 2,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'The CabiTV CT-100 is designed with ease and convenience in mind, ensuring a hassle-free installation process. Your kitchen TV will arrive ready to install, requiring minimal tools and time. In fact, you\'ll only need a screwdriver to complete the installation in under 30 minutes.\n\nOnce your CabiTV CT-100 is securely mounted, simply connect it to power and Wi-Fi, and you\'re all set to start cooking while enjoying your favorite TV shows, news, or entertainment.\n\nSay goodbye to complicated installations and hello to a new world of kitchen entertainment with the CabiTV CT-100.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/cabitv/resources/home/easy-to-install-kitchen-television.mp4',
                          )),
                    ],
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
                    width: double.infinity,
                    imageUrl:
                        'https://www.evervue.com/evervue/assets/under-cupboard-smart-tv-for-kitchen.jpg',
                    fit: BoxFit.cover,
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'A Smart TV Tailored for Your Culinary Adventures',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'The CabiTV CT-100 offers seamless integration with popular streaming platforms and apps, ensuring that you have access to a wealth of content, anytime you need it. Wheather you\'re in the mood for a quick tutorial or an in-depth cooking documentary, the CabiTV CT-100 has you covered.',
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
                                'https://www.evervue.com/evervue/assets/best-rated-smart-kitchen-tv.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Touchscreen Control: Intuitive Interaction at Your Fingertips',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'The CabiTV CT-100 features a high-quality touchscreen that allows you to effortlessly control your kitchen TV. Enjoy seamless access to all the smart functions and capabilities of the CabiTV CT-100 with just a few taps on the intuitive touchscreen interface.',
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
                                'https://www.evervue.com/evervue/assets/touchscreen-under-cabinet-tv.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'High Definition Audio: Immerse Yourself in Crystal Clear Sound',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Enhance your kitchen entertainment experience with the CabiTV CT-100\'s premium built-in speakers. These high-quality speakers deliver crisp, clear audio, making your kitchen an even more enjoyable space for cooking, entertainment, and relaxation.',
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
                                'https://www.evervue.com/evervue/assets/smart-kitchen-tv-with-built-in-speakers.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Smart and Waterproof Remote Control: The Ultimate in Convenience',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Maximize the potential of you CabiTV CT-100 with our innovative Zepp Remote. Effortlessly navigate through your Smart TV features using the integrated keyboard, ensuring seamless control over your entertainment options. Designed with practicality in mind, the Zepp Remote comes with a waterproof skin and a suction cup holder, allowing you to securely attach it to almost any surface in your kitchen.',
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
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Safety First: Worry-Free Kitchen Entertainment',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'At CabiTV, we understand the importance of safety in your kitchen, which is why the CabiTV CT-100 is designed with a low-voltage, 12-volt power supply. This ensures that your kitchen remains a safe and worry-free environment, allowing you to enjoy your TV without any concerns.\n\nExperience peace of mind with the CabiTV CT-100, knowing that it is designed with your safety in mind.',
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
                                'https://www.evervue.com/evervue/assets/tv-kitchen-under-cabinet-with-wifi.jpg',
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
                                    'assets/specification/cabitv-100-specification-table.pdf',
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
