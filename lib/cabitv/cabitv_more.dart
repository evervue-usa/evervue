import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/info_page.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CabiTVMorePage extends StatefulWidget {
  const CabiTVMorePage({super.key, required this.onPageSelected});

  final Function(Widget) onPageSelected;

  @override
  State<CabiTVMorePage> createState() => _CabiTVMorePageState();
}

class _CabiTVMorePageState extends State<CabiTVMorePage> {
  final List<Map<String, dynamic>> button100 = [
    {
      'image': 'https://www.evervue.com/evervue/assets/ctbrochure.jpg',
      'link':
          'https://www.cabitv.com/wp-content/uploads/CABITV-PRODUCT-BROCHURE.pdf',
      'text': 'CabiTV\nBrochure'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/cabitv-specs-icon.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Mirror Specifications (PDF)',
        pdfSpecs: 'assets/specification/cabitv-100-specification-table.pdf',
      ),
      'text': 'CT100 - Specifications'
    },
  ];

  final List<Map<String, dynamic>> button200 = [
    {
      'image': 'https://www.evervue.com/evervue/assets/cabitv-specs-icon.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Mirror Specifications (PDF)',
        pdfSpecs: 'assets/specification/cabitv-200-specification-table.pdf',
      ),
      'text': 'CT200 - Specifications'
    },
  ];

  final List<Map<String, dynamic>> textOpt = [
    {
      'image': 'https://www.evervue.com/evervue/assets/info-icon.png',
      'text': 'About Us',
      'link': const CabiTVAboutUs()
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/contact-icon.png',
      'text': 'Contact Us',
      'link': const ContactUs()
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/sched-icon.png',
      'text': 'Schedule a Call',
      'link': 'https://on.sprintful.com/schedule-a-call-with-evervue'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/support-icon.png',
      'text': 'Support',
      'link': 'https://www.evervue.com/support/'
    },
  ];

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

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
                  'https://www.evervue.com/evervue/assets/ct100-banner.jpg',
              width: screenWidth,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: screenWidth,
                    child: Text(
                      'CabiTV - CT100',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: button100.asMap().entries.map((entry) {
                        Map<String, dynamic> option = entry.value;

                        return InkWell(
                          onTap: () {
                            final link = option['link'];
                            if (link is Widget &&
                                option['text'] == 'CT100 - Specifications') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => link,
                                ),
                              );
                            } else if (link is String) {
                              _launchURL(link);
                            } else if (link is Widget) {
                              widget.onPageSelected(link);
                            }
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
                                    ? (screenWidth / 4.5) - 20
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
                              Text(
                                option['text'],
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        );
                      }).toList()),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 30),
                    width: screenWidth,
                    child: Text(
                      'CabiTV - CT200',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: button200.asMap().entries.map((entry) {
                        Map<String, dynamic> option = entry.value;

                        return InkWell(
                          onTap: () {
                            final link = option['link'];
                            if (link is Widget &&
                                option['text'] == 'CT200 - Specifications') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => link,
                                ),
                              );
                            } else if (link is String) {
                              _launchURL(link);
                            } else if (link is Widget) {
                              widget.onPageSelected(link);
                            }
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
                                    ? (screenWidth / 4.5) - 20
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
                              Text(
                                option['text'],
                                textAlign: TextAlign.center,
                              )
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
                        final link = index['link'];
                        if (link is String) {
                          _launchURL(link);
                        } else if (link is Widget) {
                          widget.onPageSelected(link);
                        } else {
                          throw 'Invalid link type: ${link.runtimeType}';
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        child: Row(
                          children: [
                            ImageIcon(
                                size: 32,
                                color: Colors.amber,
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

class CabiTVAboutUs extends StatefulWidget {
  const CabiTVAboutUs({super.key});

  @override
  State<CabiTVAboutUs> createState() => _CabiTVAboutUsState();
}

class _CabiTVAboutUsState extends State<CabiTVAboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 300),
                padding: const EdgeInsets.all(30),
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
                        'https://www.evervue.com/evervue/assets/support-cabitv.png'),
              ),
              const Text(
                  'Evervue USA Inc., a leading provider of cutting-edge technology and luxury electronics, is proud to introduce CabiTV – a range of state-of-the-art kitchen TVs designed to seamlessly integrate into your home. Our commitment to excellence and attention to detail ensures that our products not only meet, but exceed, the highest industry standards.\n\n'
                  'At CabiTV, we understand the importance of a personalized touch. That\'s why we offer customization options to tailor each CabiTV to your unique kitchen design, ensuring a perfect fit every time. Our user-friendly interfaces, smart features, and top-notch customer support make CabiTV the go-to choice for modern kitchen entertainment solutions.\n\n'
                  'Join the CabiTV family and elevate your kitchen experience with our innovative and stylish kitchen TVs.')
            ],
          ),
        ),
      )),
    );
  }
}
