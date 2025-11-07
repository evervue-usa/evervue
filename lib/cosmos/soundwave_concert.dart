import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SoundWaveConcert extends StatefulWidget {
  const SoundWaveConcert({super.key});

  @override
  State<SoundWaveConcert> createState() => _SoundWaveConcertState();
}

class _SoundWaveConcertState extends State<SoundWaveConcert> {
  List<Map<String, String>> dataSet = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/outdoor-tv-two-sound-wave-speakers.png',
      'title': 'Left and Right Speakers',
      'description':
          'Dual speaker technology provides excellent audio in your backyard. The speakers come standard on a 10” pole that can be mounted on tile, brick, or wood.',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/outdoor-tv-touch-screen-subwoofer-speaker.png',
      'title': 'Subwoofer Included',
      'description':
          'Especially outdoors, a subwoofer makes an incredible difference when it comes to the sound quality.',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/subwoofer-speaker-of-outdoor-tv.png',
      'title': 'Touch Screen Control',
      'description':
          'With the handy control box, you can change the inputs (bluetooth for your smart phone), volume or the audio settings with a touch on the control screen.',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/outdoor-tv-touch-screen-subwoofer-back.png',
      'title': 'Outdoor Audio cables with waterproof plugs',
      'description':
          'The SoundWave Concert comes standard with outdoor audio cables and waterproof plugs. The speakers all connect to the back side of the control box which directly connects to the Cosmos Outdoor TV.',
    },
  ];

  List<Map<String, String>> listSrc = [
    {
      'image': 'https://www.evervue.com/evervue/assets/icon-of-aux.png',
      'text': 'AUX'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/icon-of-bluetooth.png',
      'text': 'Bluetooth'
    },
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
              height: ifScreen ? screenHeight * 0.42 : screenHeight * 0.62,
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
                                  'https://www.evervue.com/evervue/assets/outdoor-tv-weather-resistant-audio-speaker.png'),
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
                                  'CONCERT',
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
                    'The sound system that is built for outdoors',
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
                          'https://www.evervue.com/evervue/assets/outdoor-tv-with-sound-wave-audio.png'),
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
                          'Made of Stainless Steel',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'The SoundWave Concert is completely made of high quality stainless-steel (S304). Rustproof, easy to clean and no maintenance needed.',
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
                          'https://www.evervue.com/evervue/assets/outdoor-tv-stainless-steel-concert-speaker.png'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Text(
                    'Endless Entertainment',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Watch the match outdoors with your friends and family.',
                    textAlign: TextAlign.center,
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
                          'https://www.evervue.com/evervue/assets/people-watching-with-outdoor-tv.png'),
                  SizedBox(height: 50),
                  Text(
                    'Play it your way',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stream over Wi-Fi from compatible apps on your phone or laptop, play songs right over bluetooth, or plug in your record player using a stereo cable.',
                    textAlign: TextAlign.center,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: listSrc.asMap().entries.map((entry) {
                        Map<String, String> media = entry.value;
                        return SizedBox(
                          width: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  width: 100,
                                  imageUrl: media['image']!),
                              Text(media['text']!)
                            ],
                          ),
                        );
                      }).toList()),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Connect any other device to the SoundWave Concert through the AUX or wirelessly through Bluetooth.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      )),
    );
  }
}
