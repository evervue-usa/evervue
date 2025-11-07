import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/info_page.dart';
import 'package:evervue/ocea/ocea_wood_design.dart';
import 'package:evervue/ocea/ocea_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OceaMorePage extends StatefulWidget {
  const OceaMorePage({super.key, required this.onPageSelected});

  final Function(Widget) onPageSelected;

  @override
  State<OceaMorePage> createState() => _OceaMorePageState();
}

class _OceaMorePageState extends State<OceaMorePage> {
  final List<Map<String, dynamic>> buttonPro = [
    {
      'image': 'https://www.evervue.com/evervue/assets/ocea-pro-thumbnail.jpg',
      'link': OceaPDFViewer(
        pdfTitle: 'Ocea Pro Brochure (PDF)',
        pdfSpecs: 'assets/brochure/Ocea-Pro-Smart-Touch-Brochure.pdf',
      ),
      'text': 'Ocea Pro\nBrochure'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/ocea-specs-icon.jpg',
      'link': OceaPDFViewer(
        pdfTitle: 'Mirror Specifications (PDF)',
        pdfSpecs: 'assets/specification/ocea-pro-specification-table.pdf',
      ),
      'text': 'Ocea Pro\nSpecifications'
    },
  ];

  final List<Map<String, dynamic>> buttonStyle = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/color-options-design.jpg',
      'link': OceaColorOptions(),
      'text': 'Color Options'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/ocea-style-thumbnail.jpg',
      'link': OceaPDFViewer(
        pdfTitle: 'Ocea Style Brochure (PDF)',
        pdfSpecs: 'assets/brochure/Ocea-Style-Bathroom-TV-Brochure.pdf',
      ),
      'text': 'Ocea Style\nBrochure'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/ocea-specs-icon.jpg',
      'link': OceaPDFViewer(
        pdfTitle: 'Mirror Specifications (PDF)',
        pdfSpecs: 'assets/specification/ocea-style-specification-table.pdf',
      ),
      'text': 'Ocea Style\n Specifications'
    }
  ];

  final List<Map<String, dynamic>> textOpt = [
    {
      'image': 'https://www.evervue.com/evervue/assets/info-icon.png',
      'text': 'About Us',
      'link': const OceaAboutUs()
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
                  'https://www.evervue.com/evervue/assets/ocea-banner-more.jpg',
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
                      'Ocea Pro',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: buttonPro.asMap().entries.map((entry) {
                        Map<String, dynamic> option = entry.value;

                        return InkWell(
                          onTap: () {
                            final link = option['link'];
                            if (link is Widget &&
                                option['text'] == 'Ocea Pro Specifications') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => link,
                                ),
                              );
                            }else if (link is Widget &&
                                option['text'] == 'Ocea Pro Brochure') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => link,
                                ),
                              );
                            }else if (link is String) {
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
                                    : (screenWidth / 4) - 25,
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
                      'Ocea Style',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: buttonStyle.asMap().entries.map((entry) {
                        Map<String, dynamic> option = entry.value;

                        return InkWell(
                          onTap: () {
                            final link = option['link'];
                            if (link is Widget &&
                                option['text'] == 'Ocea Style Specifications') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => link,
                                ),
                              );
                            }else if (link is Widget &&
                                option['text'] == 'Ocea Style Brochure') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => link,
                                ),
                              );
                            }else if (link is String) {
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
                                    : (screenWidth / 4) - 25,
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
                                color: const Color(0xffaa2926),
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

class OceaAboutUs extends StatefulWidget {
  const OceaAboutUs({super.key});

  @override
  State<OceaAboutUs> createState() => _OceaAboutUsState();
}

class _OceaAboutUsState extends State<OceaAboutUs> {
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
                        'https://www.evervue.com/evervue/assets/oceablack-logo.png'),
              ),
              const Text(
                  'Founded in 2001, Evervue USA Inc. is a leading manufacturer of high-quality bathroom televisions designed for luxury living. Our innovative and stylish products are the perfect complement to modern bathrooms, providing an unparalleled entertainment experience that\'s sure to enhance your daily routine.\n\n'
                  'Ocea Pro, our flagship product, is a versatile bathroom television that\'s perfect for use in wet environments like bathrooms, showers, and saunas. With its water-resistant design, Ocea Pro delivers unparalleled performance and versatility, offering an immersive entertainment experience that\'s perfect for modern living.\n\n'
                  'Ocea Style, our newest offering, is a sleek and stylish bathroom television that doubles as a mirror when turned off. With its elegant design, exceptional performance, and easy installation, Ocea Style is the perfect choice for those looking to elevate their bathroom experience.')
            ],
          ),
        ),
      )),
    );
  }
}
