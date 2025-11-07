import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/cabitv/cabitv_page.dart';
import 'package:evervue/cinema/cinema_page.dart';
import 'package:evervue/cosmos/cosmos_page.dart';
import 'package:evervue/decovue/decovue_page.dart';
import 'package:evervue/mirrorvue/mirrorvue_page.dart';
import 'package:evervue/ocea/ocea_page.dart';
import 'package:evervue/qaio/qaio_page.dart';
import 'package:evervue/spectrum/spectrum_page.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageOptions extends StatefulWidget {
  const HomePageOptions({super.key});

  @override
  State<HomePageOptions> createState() => _HomePageOptionsState();
}

class _HomePageOptionsState extends State<HomePageOptions> {
  final List<Map<String, dynamic>> largeBanner = [
    {
      'asset': 'assets/images/banner/mirrorvue-banner.mp4',
      'logo':
          'https://www.evervue.com/evervue/assets/mirrorvue-final-logo-sample.png',
      'page': MirrorVuePage()
    },
    {
      'asset': 'assets/images/banner/decovue-banner.mp4',
      'logo': 'https://www.evervue.com/evervue/assets/decovue-logo-sample.png',
      'page': DecoVuePage()
    },
  ];

  final List<Map<String, dynamic>> mediumBanner = [
    {
      'asset': 'https://www.evervue.com/evervue/assets/ocea-pro-banner.jpg',
      'logo': 'https://www.evervue.com/evervue/assets/ocea-pro-logo-sample.png',
      'page': OceaMainPage()
    },
    {
      'asset': 'https://www.evervue.com/evervue/assets/ocea-style-banner.jpg',
      'logo':
          'https://www.evervue.com/evervue/assets/ocea-style-logo-sample.png',
      'page': OceaMainPage()
    },
    {
      'asset': 'assets/images/banner/cosmos-outdoor-banner.mp4',
      'logo': 'https://www.evervue.com/evervue/assets/cosmos-logo-sample.png',
      'page': CosmosPage()
    },
    {
      'asset': 'assets/images/banner/cosmos-marine-banner.mp4',
      'logo': 'https://www.evervue.com/evervue/assets/marine-logo-sample.png',
      'page': CosmosPage()
    },
    {
      'asset': 'https://www.evervue.com/evervue/assets/qaio-flex-banner.jpg',
      'logo': '',
      'page': QaioPage()
    },
    {
      'asset': 'https://www.evervue.com/evervue/assets/qaio-mirror-banner.jpg',
      'logo': '',
      'page': QaioPage()
    },
    {
      'asset': 'assets/images/banner/cabitv-banner.mp4',
      'logo': '',
      'page': CabiTVPage()
    },
    {
      'asset': 'https://www.evervue.com/evervue/assets/cinema-banner.jpg',
      'logo': '',
      'page': CinemaPage()
    },
    {
      'asset': 'https://www.evervue.com/evervue/assets/spectrum-banner.jpg',
      'logo': '',
      'page': SpectrumPage()
    },
    {
      'asset':
          'https://www.evervue.com/evervue/assets/accessories-zepp-remote-pro.png',
      'logo': '',
      'page': _launchUrl,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Column(
                spacing: 5,
                children: largeBanner.asMap().entries.map((entry) {
                  Map<String, dynamic> banner = entry.value;

                  return InkWell(
                    onTap: () {
                      if (banner['page'] is Function) {
                        banner['page']();
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => banner['page']));
                      }
                    },
                    child: Stack(
                      children: [
                        (banner['asset'].toString().endsWith('mp4'))
                            ? VideoPlayerWidget(
                                source: banner['asset'],
                              )
                            : CachedNetworkImage(
                                placeholder: (context, url) => const Text(
                                      'Loading assets...',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 168, 0, 0),
                                        fontSize: 16,
                                      ),
                                    ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                imageUrl: banner['asset']),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              constraints: const BoxConstraints(maxWidth: 600),
                              width: screenWidth,
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
                                imageUrl: banner['logo'],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList()),
            const SizedBox(
              height: 5,
            ),
            Wrap(
              spacing: 5,
              runSpacing: 5,
              children: mediumBanner.asMap().entries.map((entry) {
                Map<String, dynamic> banner = entry.value;

                return LayoutBuilder(
                  builder: (context, constraints) {
                    double itemWidth = (constraints.maxWidth / 2) - 2.5;
                    return SizedBox(
                      width: itemWidth,
                      child: InkWell(
                        onTap: () {
                          if (banner['page'] is Function) {
                            banner['page']();
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => banner['page']),
                            );
                          }
                        },
                        child: Stack(
                          children: [
                            (banner['asset'].toString().endsWith('mp4'))
                                ? VideoPlayerWidget(source: banner['asset'])
                                : CachedNetworkImage(
                                    placeholder: (context, url) => const Text(
                                      'Loading assets...',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 168, 0, 0),
                                          fontSize: 16),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                    imageUrl: banner['asset'],
                                  ),
                            if (banner['logo'].toString() != '')
                              Positioned(
                                bottom: 10,
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: Container(
                                    constraints:
                                        const BoxConstraints(maxWidth: 600),
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
                                      imageUrl: banner['logo'],
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        )),
      )),
    );
  }
}

Future<void> _launchUrl() async {
  const url = 'https://evervuestore.com/product-category/accessories/';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
