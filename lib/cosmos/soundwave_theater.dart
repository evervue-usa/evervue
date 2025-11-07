import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SoundWaveTheater extends StatefulWidget {
  const SoundWaveTheater({super.key});

  @override
  State<SoundWaveTheater> createState() => _SoundWaveTheaterState();
}

class _SoundWaveTheaterState extends State<SoundWaveTheater> {
  List<Map<String, String>> dataSet = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/outdoor-tv-exceptional-built-in-speaker.png',
      'title': 'Center Speaker',
      'description':
          'Equipped with three speakers, the center speaker supports the balanced audio between other speakers. All speakers are completely made of premium quality stainless-steel.',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/two-outdoor-tv-stainless-steel-speakers.png',
      'title': 'Side Speakers',
      'description':
          'The two side speakers come standard on 15" stainless-steel pole that can be mounted on a tile, brick or wood.',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/outdoor-tv-full-size-stainless-speakers.png',
      'title': 'Main Speakers',
      'description':
          'The two full-sized main speakers will give an unforgettable audio experience. Like all other SoundWave outdoor speakers, SoundWave Theater is made of very durable, rustproof and maintenance free stainless-steel.',
    }
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool ifScreen = screenWidth > 700;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: ifScreen ? screenHeight * 0.4 : screenHeight * 0.62,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFF0F0F0), Color(0xFFFFFFFF)],
                      begin: AlignmentDirectional.bottomCenter,
                      end: Alignment.topCenter)),
              child: Stack(
                children: [
                  Positioned(
                      left: 0,
                      bottom: 0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          constraints:
                              BoxConstraints(maxHeight: screenHeight * .62),
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
                                  ? (screenWidth * 0.5)
                                  : screenWidth - 50,
                              imageUrl:
                                  'https://www.evervue.com/evervue/assets/outdoor-tv-soundwave-theater-sound-system.png'),
                        ),
                      )),
                  Positioned(
                    top: ifScreen ? 0 : 40,
                    bottom: 0,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: ifScreen
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: ifScreen ? screenWidth * 0.5 : screenWidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CachedNetworkImage(
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
                                    height: ifScreen
                                        ? screenHeight * 0.12
                                        : screenHeight * 0.12,
                                    imageUrl:
                                        'https://www.evervue.com/evervue/assets/logo-of-sound-wave.png'),
                                Text(
                                  'THEATER',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Bold',
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: screenWidth * 0.42,
                                  child: Text(
                                    'Weather-resistant Sound System',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Roboto', fontSize: 16),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20, top: 30),
              width: screenWidth,
              color: Colors.black,
              child: Column(
                children: [
                  Text(
                    'Exceptional Sound for Expectational Locations',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CachedNetworkImage(
                      width: ifScreen ? 700 : screenWidth,
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
                          'https://www.evervue.com/evervue/assets/theater-sound-system-with-outdoor-tv.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Features',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Wrap(
                        runSpacing: 50,
                        alignment: WrapAlignment.spaceBetween,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: dataSet.asMap().entries.map((entry) {
                          int index = entry.key;
                          Map<String, String> media = entry.value;

                          return Wrap(
                            runSpacing: 20,
                            spacing: 20,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              if (screenWidth > 700)
                                if (index % 2 == 0)
                                  SizedBox(
                                    width: ifScreen
                                        ? screenWidth * 0.43
                                        : screenWidth - 50,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          media['title']!,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          media['description']!,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
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
                                  width: ifScreen
                                      ? screenWidth * .43
                                      : screenWidth - 40,
                                  imageUrl: media['image']!),
                              screenWidth < 699
                                  ? SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            media['title']!,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            media['description']!,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    )
                                  : index % 2 != 0
                                      ? SizedBox(
                                          width: ifScreen
                                              ? screenWidth * 0.43
                                              : screenWidth - 50,
                                          child: SizedBox(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  media['title']!,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  media['description']!,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : SizedBox.shrink()
                            ],
                          );
                        }).toList()),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                    width: ifScreen ? screenWidth * 0.5 : screenWidth - 50,
                    child: Column(
                      children: [
                        Text(
                          'Subwoofer',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'An essential part of any great sound system is the subwoofer.  Especially outdoors, a subwoofer will make a big difference.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
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
                      width: ifScreen ? screenWidth * .7 : screenWidth - 40,
                      imageUrl:
                          'https://www.evervue.com/evervue/assets/subwoofer-stainless-speaker-for-outdoor-tv.png'),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: ifScreen ? screenWidth * 0.5 : screenWidth - 50,
                    child: Text(
                      'The SoundWave Theater needs an additional amplifier that is not included. Any 5-speaker amplifier is compatible.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
