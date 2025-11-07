import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/info_page.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SpectrumMorePage extends StatefulWidget {
  const SpectrumMorePage({super.key, required this.onPageSelected});

  final Function(Widget) onPageSelected;

  @override
  State<SpectrumMorePage> createState() => _SpectrumMorePageState();
}

class _SpectrumMorePageState extends State<SpectrumMorePage> {
  final List<Map<String, dynamic>> buttonOpt = [
    {
      'image': 'https://www.evervue.com/evervue/assets/spectrum-specs-icon.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Mirror Specifications (PDF)',
        pdfSpecs: 'assets/specification/spectrum-specification-table.pdf',
      ),
      'text': 'Spectrum Specifications'
    },
  ];

  final List<Map<String, dynamic>> textOpt = [
    {
      'image': 'https://www.evervue.com/evervue/assets/info-icon.png',
      'text': 'About Us',
      'link': const AboutUs()
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
                  'https://www.evervue.com/evervue/assets/spectrum-banner-more.jpg',
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
                            final link = option['link'];
                            if (link is Widget &&
                                option['text'] == 'Spectrum Specifications') {
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
                                color: Color(0xffB32927),
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
