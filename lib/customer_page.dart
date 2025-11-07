// ignore_for_file: unnecessary_string_interpolations

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CList {
  String title;
  List<String> image;

  CList({required this.title, required this.image});
}

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  List<String> defaultList = [
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc1.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc2.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc3.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc4.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc5.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc6.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc7.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc8.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc9.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc10.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc11.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc12.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc13.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc14.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc15.jpg',
  ];

  String defaultTitle =
      'https://www.evervue.com/evervue/assets/support-mirrorvue.jpg';

  List<CList> clist = [
    CList(
        title: 'https://www.evervue.com/evervue/assets/support-mirrorvue.jpg',
        image: [
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc1.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc2.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc3.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc4.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc5.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc6.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc7.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc8.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc9.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc10.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc11.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc12.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc13.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc14.jpg',
          'https://www.evervue.com/evervue/assets/mirrorvue_customer/mc15.jpg',
        ]),
    CList(
        title:
            'https://www.evervue.com/evervue/assets/support-grandmirrors.jpg',
        image: [
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc1.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc2.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc3.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc4.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc5.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc6.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc7.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc8.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc9.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc10.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc11.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc12.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc13.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc14.jpg',
          'https://www.evervue.com/evervue/assets/grandmirrors_customer/gc15.jpg',
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool ifScreen = screenWidth > 700;

    return SingleChildScrollView(
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
                'https://www.evervue.com/evervue/assets/evervue-customers-banner.jpg',
            memCacheWidth: screenWidth.toInt(),
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
            child: Column(
              children: [
                const Text(
                  'We have over 20 years experience. Evervue has been involved in many different types of projects and customers around the world. From large commercial and hospitality projects to very complicated mirror TV applications in planes and yachts to residential project.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 25),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: clist.map((clist) {
                      return Container(
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        width:
                            ifScreen ? (700 * 0.4) : ((screenWidth - 50) * 0.5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0)),
                            textStyle: const TextStyle(
                              fontSize: 13,
                              height: 1.5,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              defaultList = clist.image;
                              defaultTitle = clist.title;
                            });
                          },
                          child: Padding(
                            padding: ifScreen
                                ? const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5)
                                : const EdgeInsets.symmetric(horizontal: 10),
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
                              imageUrl: clist.title,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 25),
                Wrap(
                  children: defaultList.map((i) {
                    return Container(
                      margin: const EdgeInsets.all(5),
                      width:
                          ifScreen ? (700 * 0.32) : (screenWidth - 60) * 0.33,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: 0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: ifScreen
                            ? const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15)
                            : const EdgeInsets.all(5),
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
                          imageUrl: '$i',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
