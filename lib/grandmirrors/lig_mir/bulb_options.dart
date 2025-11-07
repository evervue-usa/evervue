import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BulbOptions extends StatelessWidget {
  BulbOptions({super.key});

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

  final List<Map<String, dynamic>> silverCrownBulbs = [
    {
      'name': 'Crown\nSilver Cool',
      'code': 'B130C',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/crown-silver-cool-bulb.jpg',
    },
    {
      'name': 'Crown\nSilver Mid Warm',
      'code': 'B130M',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/crown-silver-midwarm.jpg',
    },
    {
      'name': 'Crown\nSilver Warm',
      'code': 'B130W',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/crown-silver-warm.jpg',
    },
  ];

  final List<Map<String, dynamic>> ringOptions = [
    {
      'name': 'B400',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b400-bulb-hollywood-grandmirrors.jpg',
    },
    {
      'name': 'B410',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b410-bulb-hollywood-grandmirrors.jpg',
    },
    {
      'name': 'B420',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b420-bulb-hollywood-grandmirrors.jpg',
    },
    {
      'name': 'B600',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b600-grand-mirrors-bulb.jpg',
    },
    {
      'name': 'B610',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b610-hollywood-bulb.jpg',
    },
    {
      'name': 'B620',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b620-hollywood-bulb.jpg',
    },
    {
      'name': 'B630',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b630-hollywood-bulb.jpg',
    },
    {
      'name': 'B640',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b640-hollywood-bulb.jpg',
    },
    {
      'name': 'B700',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b700-hollywood-bulb.jpg',
    },
    {
      'name': 'B710',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b710-hollywood-bulb.jpg',
    },
    {
      'name': 'B720',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b720-hollywood-bulb.jpg',
    },
    {
      'name': 'B730',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b730-hollywood-bulb.jpg',
    },
    {
      'name': 'B740',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b740-grand-mirrors-bulb.jpg',
    },
    {
      'name': 'B800',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b800-grand-mirrors-hollywood.jpg',
    },
    {
      'name': 'B810',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b810-bulb-grand-mirrors.jpg',
    },
    {
      'name': 'B820',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b820-bulb-grand-mirrors.jpg',
    },
    {
      'name': 'B910',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b910-bulb-grand-mirrors.jpg',
    },
    {
      'name': 'B920',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/b920-bulb-grand-mirrors.jpg',
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
      'name': 'Black Ring',
      'image':
          'https://www.evervue.com/evervue/assets/bulbs/black-bulb-ring.jpg',
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
                title: 'BULB OPTIONS E14',
                margin: EdgeInsets.only(top: 40),
              ),
              const SectionSecond(
                secondtitle: '24 Volt Configuration',
              ),
              const SectionDescription(
                text:
                    'Grand Mirrors Hollywood comes with a selection of bulbs to choose from. These E14 size bulbs are powered by 24 volts. Bright and efficient, each bulb consumes only 3 watts. The Hollywood mirror by Grand Mirrors offers the best solution for any occasion and location, perfect for residential settings.',
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
                title: 'Silver Crown bulbs',
                margin: EdgeInsets.only(top: 40),
              ),
              const SectionDescription(
                text: 'Cool (600K), Mid-Warm (4500K), and Warm (3000K).',
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 500),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double screenWidth = constraints.maxWidth;
                    double itemWidth = (screenWidth - 20) / 3;

                    return Wrap(
                      spacing: 10.0,
                      runSpacing: 20.0,
                      alignment: WrapAlignment.center,
                      children: silverCrownBulbs.map((bulb) {
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
                title: ' BULB OPTIONS E26',
                margin: EdgeInsets.only(top: 40),
              ),
              const SectionSecond(
                secondtitle: '110 Volt Configuration',
              ),
              const SectionDescription(
                text:
                    ' Grand Mirrors Hollywood is also available with a universal E26 bulb fitting. We offer a variety of beautiful bulbs that will make your Hollywood mirror as unique as you are. The mirror and bulbs are powered by a standard 110 Volt AC, allowing you to use bulbs from other vendors if you prefer.',
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
                      alignment: WrapAlignment.start,
                      children: ringOptions.map((ring) {
                        return SizedBox(
                          width: itemWidth,
                          child: RingOption(
                            image: ring['image'],
                            title: ring['name'],
                            imageSize: imageSize,
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
              const SectionTitle(
                title: 'RING COLOR OPTIONS:',
                margin: EdgeInsets.only(top: 20),
              ),
              const SectionDescription(
                text:
                    'Choose from silver, gold, black, or white rings to match the decor of your room.',
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

class RingOption extends StatelessWidget {
  final String image;
  final String title;
  final double imageSize;

  const RingOption({
    super.key,
    required this.image,
    required this.title,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
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
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
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
