import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class QaioDealersPage extends StatefulWidget {
  const QaioDealersPage({super.key});

  @override
  State<QaioDealersPage> createState() => _QaioDealersPageState();
}

class _QaioDealersPageState extends State<QaioDealersPage> {
  final List<String> change = [
    'https://www.evervue.com/evervue/assets/connect-device-with-smart-mirror.jpg',
    'https://www.evervue.com/evervue/assets/toothbrush-connects-to-smart-mirror.jpg',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'Revolutionize Bathroom Vanity Mirrors with QAIO',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'Introducing QAIO to your store is not merely an addition of another mirror; it\'s a step towards embracing the future of bathroom vanity mirrors. By featuring QAIO in your product lineup, you\'ll be offering an innovative new category that will captivate and inspire your customers. Transform the way consumers interact with their vanity mirrors and elevate their experience like never before.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'A Unique Sales Opportunity for Forward-Thinking Retailers',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 30),
                    child: const Text(
                      'Embrace innovation with our eye-catching Point of Sales displays, designed for a variety of retail spaces, including DIY stores, electronics stores, bathroom stores, home furnishing stores, and department stores.\n\nQAIO\'s Point of Sales retail displays are not only easy to install but also deliver a convenient and memorable shopping experience. Don\'t miss this opportunity to stand out in the retail landscape with our cutting-edge displays.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
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
                          'https://www.evervue.com/evervue/assets/connect-device-with-smart-mirror.jpg',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'Collaborate with QAIO for Smart Device Promotion',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 30),
                    child: const Text(
                      'QAIO is the perfect partner to promote your collection of smart devices, including Smart Scales, Smart Shavers, and Smart Toothbrushes. Enhance your customers\' engagement with your smart product lineup by collaborating with QAIO. We offer customization options to provide a truly unique experience tailored to your smart products, ensuring your customers enjoy an unparalleled user experience.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
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
                          'https://www.evervue.com/evervue/assets/toothbrush-connects-to-smart-mirror.jpg',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: const Text(
                      'Don\'t miss the opportunity to learn more about our retailer program. Reach out to us via email at sales@evervue.com to get started. Kindly provide a brief introduction of your organization, and one of our sales representatives will be in touch with further details. Take the first step towards staying ahead in the industry by partnering with us.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
