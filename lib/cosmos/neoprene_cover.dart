import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NeopreneCoverPage extends StatefulWidget {
  const NeopreneCoverPage({super.key});

  @override
  State<NeopreneCoverPage> createState() => _NeopreneCoverPageState();
}

class _NeopreneCoverPageState extends State<NeopreneCoverPage> {
  int selectedIndex = 0;

  final List<Map<String, String>> neoImage = [
    {
      'text': 'Beige',
      'large':
          'https://www.evervue.com/evervue/assets/beige-fabric-sunbrella-cover.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/beige-fabric-sunbrella-cover.jpg',
    },
    {
      'text': 'Black',
      'large':
          'https://www.evervue.com/evervue/assets/black-fabric-outdoor-tv-cover.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/black-fabric-outdoor-tv-cover.jpg',
    },
    {
      'text': 'Blue',
      'large':
          'https://www.evervue.com/evervue/assets/outdoor-tv-plain-blue-color-cover.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/outdoor-tv-plain-blue-color-cover.jpg',
    },
    {
      'text': 'Green',
      'large':
          'https://www.evervue.com/evervue/assets/plain-green-cover-for-exterior-tv.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/plain-green-cover-for-exterior-tv.jpg',
    },
    {
      'text': 'White',
      'large':
          'https://www.evervue.com/evervue/assets/white-fabric-cover-for-outdoor-tv.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/white-fabric-cover-for-outdoor-tv.jpg',
    },
    {
      'text': 'Camouflage',
      'large':
          'https://www.evervue.com/evervue/assets/camouflage-outdoor-tv-cover.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/camouflage-outdoor-tv-cover.jpg',
    },
    {
      'text': 'Yellow and White Stripes',
      'large':
          'https://www.evervue.com/evervue/assets/white-yellow-stripes-fabric-cover.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/white-yellow-stripes-fabric-cover.jpg',
    },
    {
      'text': 'Green Stripes',
      'large':
          'https://www.evervue.com/evervue/assets/outdoor-tv-cover-white-green-stripes.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/outdoor-tv-cover-white-green-stripes.jpg',
    },
    {
      'text': 'Green and Red Stripes',
      'large':
          'https://www.evervue.com/evervue/assets/red-green-stripe-cover-outdoor-tv.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/red-green-stripe-cover-outdoor-tv.jpg',
    },
    {
      'text': 'Blue Stripes',
      'large':
          'https://www.evervue.com/evervue/assets/stripe-blue-cover-for-outdoor-tv.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/stripe-blue-cover-for-outdoor-tv.jpg',
    },
    {
      'text': 'Sunbrella Black',
      'large':
          'https://www.evervue.com/evervue/assets/sunbrella-black-for-outdoor-tv-fabric-cover.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/sunbrella-black-for-outdoor-tv-fabric-cover.jpg',
    },
    {
      'text': 'Sunbrella Captain Navy',
      'large':
          'https://www.evervue.com/evervue/assets/captain-navy-sunbrella-fabric-cover-tv.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/captain-navy-sunbrella-fabric-cover-tv.jpg',
    },
    {
      'text': 'Sunbrella Earthly Brown',
      'large':
          'https://www.evervue.com/evervue/assets/sunbrella-earthly-brown-cover-for-outdoor-tv.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/sunbrella-earthly-brown-cover-for-outdoor-tv.jpg',
    },
    {
      'text': 'Sunbrella Iridescent Pearl',
      'large':
          'https://www.evervue.com/evervue/assets/iridescent-pearl-sunbrella-outdoor-tv-cover.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/iridescent-pearl-sunbrella-outdoor-tv-cover.jpg',
    },
    {
      'text': 'Sunbrella Ivy Green',
      'large':
          'https://www.evervue.com/evervue/assets/ivy-green-sunbrella-fabric-cover-for-outdoor-tv.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/ivy-green-sunbrella-fabric-cover-for-outdoor-tv.jpg',
    },
    {
      'text': 'Sunbrella Pacific Blue',
      'large':
          'https://www.evervue.com/evervue/assets/sunbrella-pacific-blue-fabric-outdoor-tv-cover.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/sunbrella-pacific-blue-fabric-outdoor-tv-cover.jpg',
    },
    {
      'text': 'Sunbrella Pepperdust',
      'large':
          'https://www.evervue.com/evervue/assets/pepperdust-outdoor-tv-fabric-sunbrella-cover.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/pepperdust-outdoor-tv-fabric-sunbrella-cover.jpg',
    },
    {
      'text': 'Sunbrella Sandy Beige',
      'large':
          'https://www.evervue.com/evervue/assets/sandy-beige-sunbrella-cover-for-outdoor-tv.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/sandy-beige-sunbrella-cover-for-outdoor-tv.jpg',
    },
    {
      'text': 'Sunbrella Sun Burst',
      'large':
          'https://www.evervue.com/evervue/assets/sun-burst-fabric-sunbrella-cover-for-exterior-tv.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/sun-burst-fabric-sunbrella-cover-for-exterior-tv.jpg',
    },
    {
      'text': 'Sunbrella Tor Red',
      'large':
          'https://www.evervue.com/evervue/assets/sunbrella-tor-red-for-outdoor-tv-fabric-cover.jpg',
      'option':
          'https://www.evervue.com/evervue/assets/sunbrella-tor-red-for-outdoor-tv-fabric-cover.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 700;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 600),
                  margin: const EdgeInsets.only(top: 30),
                  child: const Text(
                    'Protect Your Cosmos Outdoor and Cosmos Marine TV with High-Quality Neoprene Covers and Optional Sunbrella Fabric',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: SizedBox(
                      key: ValueKey<String>(neoImage[selectedIndex]['large']!),
                      child: Container(
                        margin: EdgeInsets.only(top: 30, bottom: 10),
                        constraints: BoxConstraints(maxWidth: 400),
                        width: screenWidth * .75,
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
                          imageUrl: neoImage[selectedIndex]['option']!,
                          alignment: Alignment.center,
                        ),
                      )),
                ),
                Text(
                  neoImage[selectedIndex]['text']!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: neoImage.asMap().entries.map((entry) {
                        int index = entry.key;
                        Map<String, dynamic> options = entry.value;
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
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
                            width: ifScreen
                                ? (screenWidth - 50) / 8.5
                                : (screenWidth - 50) / 5.5,
                            imageUrl: options['option'],
                          ),
                        );
                      }).toList()),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            )),
      )),
    );
  }
}
