import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/info_page.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DecoVueMorePage extends StatefulWidget {
  const DecoVueMorePage({super.key, required this.onPageSelected});

  final Function(Widget) onPageSelected;

  @override
  State<DecoVueMorePage> createState() => _DecoVueMorePageState();
}

class _DecoVueMorePageState extends State<DecoVueMorePage> {
  final List<Map<String, dynamic>> buttonOpt = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/neoprene-cover-thumbnail.jpg',
      'link': 'https://www.decovue.com/inspiration-gallery/',
      'text': 'Inspirational Gallery'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/decovue-banner-oled.jpg',
      'link':
          'https://www.decovue.com/wp-content/uploads/DecoVue-Framed-TV-Product-Brochure.pdf',
      'text': 'Brochure'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/decovue-specs-thumb.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Mirror Specifications (PDF)',
        pdfSpecs: 'assets/specification/decovue-specification-table.pdf',
      ),
      'text': 'DecoVue\nSpecifications'
    },
  ];

  final List<Map<String, dynamic>> textOpt = [
    {
      'image': 'https://www.evervue.com/evervue/assets/info-icon.png',
      'text': 'About Us',
      'link': const DecoVueAboutUs()
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
                  'https://www.evervue.com/evervue/assets/decovue-renaissance.jpg',
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
                                option['text'] == 'DecoVue\nSpecifications') {
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
                                color: const Color(0xffE8AC11),
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

class DecoVueAboutUs extends StatefulWidget {
  const DecoVueAboutUs({super.key});

  @override
  State<DecoVueAboutUs> createState() => _DecoVueAboutUsState();
}

class _DecoVueAboutUsState extends State<DecoVueAboutUs> {
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
                        'https://www.evervue.com/evervue/assets/support-decovue.png'),
              ),
              const Text(
                  'Welcome to Evervue USA Inc., your trusted provider of state-of-the-art mirror and display solutions. For over 20 years, we have been dedicated to revolutionizing the industry by integrating cutting-edge technology with elegant design.\n\n'
                  'Over the years, we have expanded our product line to include an extensive range of mirror and display solutions, from bathroom mirrors with built-in displays to outdoor TVs and digital signage. As a result, we have become a leading brand in both residential and commercial sectors, known for our commitment to innovation, quality, and reliability.\n\n'
                  'At Evervue USA Inc., we believe in staying ahead of the curve, constantly striving to bring the latest technological advancements to our customers. By investing in research and development, we have been able to create groundbreaking products that cater to the evolving needs of our clients.\n\n'
                  'We are immensely proud of our heritage and the reputation we\'ve built over the past two decades. As we continue to grow, we remain dedicated to upholding our core values of innovation, quality, and exceptional customer service.\n\n'
                  'Thank you for choosing Evervue USA Inc. We look forward to transforming your spaces with our industry-leading mirror and display solutions.')
            ],
          ),
        ),
      )),
    );
  }
}
