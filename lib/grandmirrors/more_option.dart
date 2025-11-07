import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/add_ons.dart';
import 'package:evervue/grandmirrors/how_to_order.dart';
import 'package:evervue/grandmirrors/info.dart';
import 'package:evervue/grandmirrors/mounts.dart';
import 'package:evervue/grandmirrors/power_supply.dart';
import 'package:evervue/grandmirrors/touch_control.dart';
import 'package:flutter/material.dart';

class MoreOptions extends StatefulWidget {
  const MoreOptions({super.key});

  @override
  State<MoreOptions> createState() => _MoreOptionsState();
}

class _MoreOptionsState extends State<MoreOptions> {
  final List<Map<String, dynamic>> buttonOpt = [
    {
      'image': 'https://www.evervue.com/evervue/assets/touch-control-icon.png',
      'link': const TouchControlPage(),
      'text': 'Touch Control'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/mounts-icon.png',
      'link': const MountsPage(),
      'text': 'Mounts'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/how-to-order-icon.png',
      'link': const HowToOrder(),
      'text': 'How To Order'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/add-ons-icon.png',
      'link': const AddOnsPage(),
      'text': 'Add-ons'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/power-supply-icon.png',
      'link': const PowerSupplyPage(),
      'text': 'Power Supply'
    },
  ];

  final List<Map<String, dynamic>> textOpt = [
    {
      'image': 'https://www.evervue.com/evervue/assets/info-icon.png',
      'text': 'About Us',
      'link': const GMAboutUs()
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/contact-icon.png',
      'text': 'Contact Us',
      'link': const GMContactUs()
    }
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool ifScreen = screenWidth > 600;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageUrl:
                  'https://www.evervue.com/evervue/assets/more-options-banner.jpg',
              width: screenWidth,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: buttonOpt.asMap().entries.map((entry) {
                        Map<String, dynamic> option = entry.value;

                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => option['link']),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: .4, color: Colors.grey)),
                                width: ifScreen
                                    ? (screenWidth / 5) - 20
                                    : (screenWidth / 3) - 25,
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => const Text(
                                          'Loading assets...',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 168, 0, 0),
                                            fontSize: 16,
                                          ),
                                        ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                    imageUrl: option['image']),
                              ),
                              Text(option['text'])
                            ],
                          ),
                        );
                      }).toList()),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Container(
                      color: Colors.grey,
                      height: 0.3,
                    ),
                  ),
                  Column(
                      children: textOpt.asMap().entries.map((entry) {
                    Map<String, dynamic> index = entry.value;

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => index['link']));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        child: Row(
                          children: [
                            ImageIcon(
                                size: 32,
                                color: const Color(0xffE0A957),
                                CachedNetworkImageProvider(index['image'])),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(index['text'])
                          ],
                        ),
                      ),
                    );
                  }).toList())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
