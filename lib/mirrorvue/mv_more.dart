import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/frames/frame_gallery.dart';
import 'package:evervue/info_page.dart';
import 'package:evervue/mirrorvue/mirror_glass_page.dart';
import 'package:evervue/mirrorvue/mirrorvue_mounts.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MirrorVueMorePage extends StatefulWidget {
  const MirrorVueMorePage({super.key, required this.onPageSelected});

  final Function(Widget) onPageSelected;

  @override
  State<MirrorVueMorePage> createState() => _MirrorVueMorePageState();
}

class _MirrorVueMorePageState extends State<MirrorVueMorePage> {
  final List<Map<String, dynamic>> buttonOpt = [
    {
      'image': 'https://www.evervue.com/evervue/assets/glass-types.jpg',
      'link': const MirrorGlassPage(),
      'text': 'Mirror Glass Type'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/mounts-icon.png',
      'link': const MirrorVueMounts(),
      'text': 'Mounts'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/frames-icon.png',
      'link': const FrameGallery(),
      'text': 'Frames'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/brochure-new.jpg',
      'link': SpecsViewer(
        pdfTitle: 'MirrorVue Brochure (PDF)',
        pdfSpecs: 'assets/brochure/mirrorvue-product-brochure.pdf',
      ),
      'text': 'Brochure'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/mirrorvue-specs-icon.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Mirror Specifications (PDF)',
        pdfSpecs: 'assets/specification/mirrorvue-mirror-tv-specification-table.pdf',
      ),
      'text': 'MirrorVue\nSpecifications'
    },
  ];

  final List<Map<String, dynamic>> textOpt = [
    {
      'image': 'https://www.evervue.com/evervue/assets/info-icon.png',
      'text': 'About Us',
      'link': const MirrorVueAboutUs()
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
                  'https://www.evervue.com/evervue/assets/custom-mirror-tv-fireplace-cut-out.jpg',
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
                                option['text'] == 'MirrorVue\nSpecifications') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => link,
                                ),
                              );
                            }else if (link is Widget &&
                                option['text'] == 'Brochure') {
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
                                color: const Color(0xffc99e62),
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

class MirrorVueAboutUs extends StatefulWidget {
  const MirrorVueAboutUs({super.key});

  @override
  State<MirrorVueAboutUs> createState() => _MirrorVueAboutUsState();
}

class _MirrorVueAboutUsState extends State<MirrorVueAboutUs> {
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
                constraints: const BoxConstraints(maxWidth: 350),
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
                        'https://www.evervue.com/evervue/assets/support-mirrorvue.png'),
              ),
              const Text(
                  'Welcome to the world of MirrorVue, where innovation, design, and luxury merge seamlessly to create an unparalleled experience. As a leading brand under the Evervue Inc. umbrella, MirrorVue has been setting the standard for exceptional mirror TV technology since 2001. Our proprietary mirror glass technology offers an unmatched fusion of style and functionality, redefining the way you interact with mirrors in your home, office, or commercial space.\n\n'
                  'At MirrorVue, we are committed to delivering exceptional products and unparalleled customer service. We use only the highest quality materials and components, ensuring durability and long-lasting performance. Our dedicated team of experts is always available to provide personalized assistance, helping you select the perfect mirror for your space and ensuring a seamless installation process.\n\n'
                  'Explore the world of MirrorVue today and transform your space with our unrivaled mirror TV technology.')
            ],
          ),
        ),
      )),
    );
  }
}
