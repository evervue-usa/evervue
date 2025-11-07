import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OceaColorOptions extends StatefulWidget {
  const OceaColorOptions({super.key});

  @override
  State<OceaColorOptions> createState() => _OceaColorOptionsState();
}

class _OceaColorOptionsState extends State<OceaColorOptions> {
  final List<Map<String, String>> woodItems = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/bathroom-tv-ideas-ocea-style.jpg',
      'label': 'White Oak',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/alluminum-alloy-framed-water-resistant-tv.jpg',
      'label': 'Mahogany',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/personalized-bathroom-evervue-tv.jpg',
      'label': 'American Walnut',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/bathroom-wall-ocea-colored-frame-tv.jpg',
      'label': 'Clear Pine',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/ocea-style-wood-design-framed-tv.jpg',
      'label': 'Cherry',
    },
  ];

  final List<Map<String, String>> uniqueItems = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/bathroom-ocea-style-wood-design-frame.jpg',
      'label': 'Citrine Bronze',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/ocea-style-tv-framed-decor-ideas.jpg',
      'label': 'Midnight Black',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/alluminum-color-frame-for-bathroom-evervue-tv.jpg',
      'label': 'Aurora Gold',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/decor-amber-gold-framed-ocea.jpg',
      'label': 'Amber Gold',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/4k-tv-ideas-for-bathroom.jpg',
      'label': 'Snow Frost White',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/ash-gray-framed-decor-ocea-style-tv.jpg',
      'label': 'Ash Gray',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // bool ifScreen = screenWidth > 600;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Color Options',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Unique Wood Designs',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                constraints: BoxConstraints(maxWidth: 600),
                width: screenWidth * .8,
                child: CachedNetworkImage(
                  placeholder: (context, url) => const Text(
                    'Loading assets...',
                    style: TextStyle(
                      color: Color.fromARGB(255, 168, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl:
                      'https://www.evervue.com/evervue/assets/smart-framed-bathroom-tv-ocea-style.jpg',
                ),
              ),
              Center(
                child: Wrap(
                    children: woodItems.asMap().entries.map((entry) {
                  Map<String, String> items = entry.value;

                  return SizedBox(
                    width: screenWidth / 7,
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
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl: items['image']!,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            items['label']!,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  );
                }).toList()),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Matte Aluminum Colors',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                constraints: BoxConstraints(maxWidth: 600),
                width: screenWidth * .8,
                child: CachedNetworkImage(
                  placeholder: (context, url) => const Text(
                    'Loading assets...',
                    style: TextStyle(
                      color: Color.fromARGB(255, 168, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl:
                      'https://www.evervue.com/evervue/assets/frame-ideas-for-ocea-style-tv.jpg',
                ),
              ),
              Center(
                child: Wrap(
                    children: uniqueItems.asMap().entries.map((entry) {
                  Map<String, String> items = entry.value;

                  return SizedBox(
                    width: screenWidth / 7,
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
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl: items['image']!,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            items['label']!,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  );
                }).toList()),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      )),
    );
  }
}
