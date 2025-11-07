import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/cosmos/neoprene_cover.dart';
import 'package:evervue/info_page.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CosmosMorePage extends StatefulWidget {
  const CosmosMorePage({super.key, required this.onPageSelected});

  final Function(Widget) onPageSelected;

  @override
  State<CosmosMorePage> createState() => _CosmosMorePageState();
}

class _CosmosMorePageState extends State<CosmosMorePage> {
  final List<Map<String, dynamic>> buttonOutdoor = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/cosmos-outdoor-thumbnail.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Cosmos Outdoor Brochure (PDF)',
        pdfSpecs: 'assets/brochure/cosmos-outdoor-tv-brochure.pdf',
      ),
      'text': 'Cosmos Outdoor\nBrochure'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/cosmos-specs-icon.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Cosmos Outdoor TV Mirror Specifications (PDF)',
        pdfSpecs: 'assets/specification/cosmos-outdoor-specification-table.pdf',
      ),
      'text': 'Cosmos Outdoor\nSpecifications'
    },
  ];

  final List<Map<String, dynamic>> buttonMarine = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/cosmos-marine-thumbnail.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Cosmos Marine Brochure (PDF)',
        pdfSpecs: 'assets/brochure/cosmos-marine-tv-brochure.pdf',
      ),
      'text': 'Cosmos Marine\nBrochure'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/cosmos-marine-specs-icon.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Cosmos Marine TV Specifications (PDF)',
        pdfSpecs: 'assets/specification/cosmos-marine-specification-table.pdf',
      ),
      'text': 'Cosmos Marine\nSpecifications'
    },
  ];

  final List<Map<String, dynamic>> buttonOpt = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/neoprene-cover-thumbnail.jpg',
      'link': NeopreneCoverPage(),
      'text': 'Neoprene Cover'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/cosmos-outdoor-thumbnail.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Cosmos Outdoor Brochure (PDF)',
        pdfSpecs: 'assets/brochure/cosmos-outdoor-tv-brochure.pdf',
      ),
      'text': 'Cosmos Outdoor\nBrochure'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/cosmos-marine-thumbnail.jpg',
      'link': SpecsViewer(
        pdfTitle: 'Cosmos Marine Brochure (PDF)',
        pdfSpecs: 'assets/brochure/cosmos-marine-tv-brochure.pdf',
      ),
      'text': 'Cosmos Marine\nBrochure'
    },
  ];

  final List<Map<String, dynamic>> textOpt = [
    {
      'image': 'https://www.evervue.com/evervue/assets/info-icon.png',
      'text': 'About Us',
      'link': const CosmosAboutUs()
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
                  'https://www.evervue.com/evervue/assets/cosmos-stainless-steel-in-zoo.jpeg',
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
                      'Cosmos Outdoor',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: buttonOutdoor.asMap().entries.map((entry) {
                        Map<String, dynamic> option = entry.value;

                        return InkWell(
                          onTap: () {
                            final link = option['link'];
                            if (link is Widget &&
                                option['text'] ==
                                    'Cosmos Outdoor\nBrochure') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => link,
                                ),
                              );
                            } else if (link is Widget &&
                                option['text'] ==
                                    'Cosmos Outdoor\nSpecifications') {
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
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    width: screenWidth,
                    child: Text(
                      'Cosmos Marine',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: buttonMarine.asMap().entries.map((entry) {
                        Map<String, dynamic> option = entry.value;

                        return InkWell(
                          onTap: () {
                            final link = option['link'];
                            if (link is Widget &&
                                option['text'] ==
                                    'Cosmos Marine\nBrochure') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => link,
                                ),
                              );
                            }else if (link is Widget &&
                                option['text'] ==
                                    'Cosmos Marine\nSpecifications') {
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
                                color: const Color(0xff5e7a01),
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

class CosmosAboutUs extends StatefulWidget {
  const CosmosAboutUs({super.key});

  @override
  State<CosmosAboutUs> createState() => _CosmosAboutUsState();
}

class _CosmosAboutUsState extends State<CosmosAboutUs> {
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
                        'https://www.evervue.com/evervue/assets/support-cosmosoutdoor.png'),
              ),
              const Text(
                  'Welcome to the world of Cosmos Outdoor TV, a premium brand by Evervue USA Inc., founded in 2001 and headquartered in Newport Beach, California. At Cosmos, we are dedicated to revolutionizing outdoor entertainment by providing cutting-edge, weather-resistant televisions that redefine the way you experience the great outdoors.\n\n'
                  'Our passion for outdoor living, combined with our commitment to innovation and customer satisfaction, has propelled us to create a range of high-quality, durable, and stylish outdoor TVs, perfect for any environment. With Cosmos Outdoor TVs, you no longer have to compromise on entertainment, whether you\'re lounging by the pool, hosting a backyard barbecue, or simply enjoying your patio.\n\n'
                  'Experience outdoor entertainment like never before with Cosmos Outdoor TVs and bring the ultimate viewing experience to your backyard and create unforgettable memories with friends and family. Discover our range of top-quality, weather-resistant TVs and elevate your outdoor living space today.')
            ],
          ),
        ),
      )),
    );
  }
}
