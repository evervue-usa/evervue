import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/info_page.dart';
import 'package:evervue/qaio/qaio_flexsizes.dart';
import 'package:evervue/qaio/qaio_installation.dart';
import 'package:evervue/qaio/qaio_products.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class QaioMorePage extends StatefulWidget {
  const QaioMorePage({super.key, required this.onPageSelected});

  final Function(Widget) onPageSelected;

  @override
  State<QaioMorePage> createState() => _QaioMorePageState();
}

class _QaioMorePageState extends State<QaioMorePage> {
  final List<Map<String, dynamic>> buttonMirror = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/qaio-products-thumbnail.jpg',
      'link': QAIOMirrorProducts(),
      'text': 'QAIO Products'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/qaio-specs-icon.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Mirror Specifications (PDF)',
        pdfSpecs: 'assets/specification/qaio-mirror-specification-table.pdf',
      ),
      'text': 'QAIO Mirror Specifications'
    },
  ];

  final List<Map<String, dynamic>> buttonFlex = [
    {
      'image': 'https://www.evervue.com/evervue/assets/qaio-flex-sizes.jpg',
      'link': QAIOFlexSizes(),
      'text': 'QAIO Flex Sizes'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/qaio-flex-mount.jpg',
      'link': QAIOFlexInstallation(),
      'text': 'QAIO Flex Installation'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/qaio-specs-icon.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Mirror Specifications (PDF)',
        pdfSpecs: 'assets/specification/qaio-flex-specification-table.pdf',
      ),
      'text': 'QAIO Flex Specifications'
    },
  ];

  final List<Map<String, dynamic>> textOpt = [
    {
      'image': 'https://www.evervue.com/evervue/assets/info-icon.png',
      'text': 'About Us',
      'link': const QaioAboutUs()
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
                  'https://www.evervue.com/evervue/assets/qaio-woman-in-the-mirror.jpg',
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
                      'QAIO Mirror',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: buttonMirror.asMap().entries.map((entry) {
                        Map<String, dynamic> option = entry.value;

                        return InkWell(
                          onTap: () {
                            final link = option['link'];
                            if (link is Widget &&
                                option['text'] ==
                                    'QAIO Mirror Specifications') {
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
                      'QAIO Flex',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: buttonFlex.asMap().entries.map((entry) {
                        Map<String, dynamic> option = entry.value;

                        return InkWell(
                          onTap: () {
                            final link = option['link'];
                            if (link is Widget &&
                                option['text'] == 'QAIO Flex Specifications') {
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
                                color: const Color(0xff3b9ec7),
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

class QaioAboutUs extends StatefulWidget {
  const QaioAboutUs({super.key});

  @override
  State<QaioAboutUs> createState() => _QaioAboutUsState();
}

class _QaioAboutUsState extends State<QaioAboutUs> {
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
                        'https://www.evervue.com/evervue/assets/support-qaio.png'),
              ),
              const Text(
                  'Evervue USA Inc., a leading innovator in luxurious electronic solutions since 2001, proudly presents the QAIO Mirror and QAIO FLEX Fitness Mirror. These groundbreaking smart mirrors blend advanced technology with stunning design to revolutionize your fitness experience and elevate your daily routines.\n\n'
                  'The QAIO Mirror is more than just an ordinary mirror; it\'s a symbol of sophistication and intelligence. With a variety of smart features tailored to your needs, the QAIO Mirror can be customized in size and finish, ensuring it flawlessly complements your home decor.\n\n'
                  'QAIO FLEX is a game-changer in home fitness technology. This state-of-the-art smart mirror delivers a complete workout experience, offering on-demand fitness classes, personalized training, and real-time progress tracking right in your own home.\n\n'
                  'Elevate your fitness experience and transform your home with the QAIO Mirror and QAIO FLEX Fitness Mirror by Evervue USA Inc. Experience luxury, innovation, and unparalleled convenience with these cutting-edge products.')
            ],
          ),
        ),
      )),
    );
  }
}
