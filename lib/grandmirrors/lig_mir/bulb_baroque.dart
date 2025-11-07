import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BulbBaroque extends StatelessWidget {
  BulbBaroque({super.key});

  final List<Map<String, dynamic>> standardBulbs = [
    {
      'name': 'Frosted\nCool',
      'code': 'B120C',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/frosted-cool-bulb.jpg',
    },
    {
      'name': 'Frosted\nWarm',
      'code': 'B120W',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/frosted-warm-bulb.jpg',
    },
    {
      'name': 'Transparent\nCool',
      'code': 'B110C',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/transparent-cool-bulb.jpg',
    },
    {
      'name': 'Transparent\nWarm',
      'code': 'B110W',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/transparent-warm-bulb.jpg',
    },
  ];

  final List<Map<String, dynamic>> ringcolors = [
    {
      'name': 'Silver Ring',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/silver-bulb-ring.jpg',
    },
    {
      'name': 'Gold Ring',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/gold-bulb-ring.jpg',
    },
    {
      'name': 'White Ring',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/white-bulb-ring.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageSize = screenWidth > 600 ? 100.0 : screenWidth / 4;

    return OrientationBuilder(builder: (context, orientation) {
      final isPortrait = orientation == Orientation.portrait;

      return Container(
        color: Colors.black,
        width: isPortrait ? double.infinity : 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SectionTitle(
                title: 'BULB OPTIONS',
                margin: EdgeInsets.only(top: 40),
              ),
              const SectionDescription(
                text:
                    'Customize your BAROQUE Mirror by choosing from frosted or transparent bulbs, available in Cool (6000K) or Warm (3000K) colours. Select the bulb option that best suits your personal style and desired ambiance.',
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 500),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double screenWidth = constraints.maxWidth;
                    double itemWidth = (screenWidth - 30) / 4;

                    return Wrap(
                      spacing: 10.0,
                      runSpacing: 20.0,
                      alignment: WrapAlignment.center,
                      children: standardBulbs.map((bulb) {
                        return SizedBox(
                          width: itemWidth,
                          child: BulbOption(
                            image: bulb['image'],
                            title: bulb['name'],
                            code: bulb['code'],
                            imageSize: imageSize,
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
              const SectionTitle(
                title: 'RING OPTIONS:',
                margin: EdgeInsets.only(top: 40),
              ),
              const SectionDescription(
                text:
                    'Choose from silver, gold, or white rings to complement the theme of your room. Select the ring option that best matches your existing decor and creates a cohesive look in your space.',
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 40),
                constraints: const BoxConstraints(maxWidth: 500),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double screenWidth = constraints.maxWidth;
                    double itemWidth = (screenWidth - 10) / 2;
                    return Wrap(
                      spacing: 10.0,
                      runSpacing: 20.0,
                      alignment: WrapAlignment.start,
                      children: ringcolors.map((bulb) {
                        return SizedBox(
                          width: itemWidth,
                          child: Ringextended(
                            image: bulb['image'],
                            title: bulb['name'],
                            imageSize: 200,
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final EdgeInsets margin;

  const SectionTitle({super.key, required this.title, required this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}

class SectionSecond extends StatelessWidget {
  final String secondtitle;

  const SectionSecond({
    super.key,
    required this.secondtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0),
      child: Center(
        child: Text(
          secondtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}

class SectionDescription extends StatelessWidget {
  final String text;
  final EdgeInsets margin;

  const SectionDescription({
    super.key,
    required this.text,
    this.margin = const EdgeInsets.fromLTRB(20, 10, 20, 10),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}

class BulbOption extends StatelessWidget {
  final String image;
  final String title;
  final String code;
  final double imageSize;

  const BulbOption({
    super.key,
    required this.image,
    required this.title,
    required this.code,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            width: imageSize,
            height: imageSize,
            child: CachedNetworkImage(
                placeholder: (context, url) => const Text(
                      'Loading assets...',
                      style: TextStyle(
                        color: Color.fromARGB(255, 168, 0, 0),
                        fontSize: 16,
                      ),
                    ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageUrl: image),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              height: 1.5,
            ),
          ),
          Text(
            code,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class Ringextended extends StatelessWidget {
  final String image;
  final String title;
  final double imageSize;

  const Ringextended({
    super.key,
    required this.image,
    required this.title,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: imageSize,
          child: CachedNetworkImage(
            placeholder: (context, url) => const Text(
              'Loading assets...',
              style: TextStyle(
                color: Color.fromARGB(255, 168, 0, 0),
                fontSize: 16,
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            imageUrl: image,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            height: 1.0,
          ),
        ),
      ],
    );
  }
}
