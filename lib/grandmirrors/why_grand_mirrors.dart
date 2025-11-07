import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/lig_mir/light_option.dart';
import 'package:evervue/grandmirrors/sliding_images.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WhyGrandMirrors extends StatefulWidget {
  const WhyGrandMirrors({super.key});

  @override
  State<WhyGrandMirrors> createState() => _WhyGrandMirrorsState();
}

class _WhyGrandMirrorsState extends State<WhyGrandMirrors> {
  late VideoPlayerOptions videoPlayerOptions;

  late VideoPlayerController _whygm2;
  late VideoPlayerController _whygm5;
  late VideoPlayerController _whygm6;

  @override
  void initState() {
    super.initState();

    videoPlayerOptions = VideoPlayerOptions(mixWithOthers: true);

    _whygm2 = VideoPlayerController.asset(
      'assets/grandmirrors/output-whygm-compare/whygm-com-02.mp4',
      videoPlayerOptions: videoPlayerOptions,
    )..setVolume(0.0);

    _whygm5 = VideoPlayerController.asset(
      'assets/grandmirrors/output-whygm-compare/whygm-com-05.mp4',
      videoPlayerOptions: videoPlayerOptions,
    )..setVolume(0.0);

    _whygm6 = VideoPlayerController.asset(
      'assets/grandmirrors/output-whygm-compare/whygm-com-06.mp4',
      videoPlayerOptions: videoPlayerOptions,
    )..setVolume(0.0);

    _initializeVideoPlayer();
  }

  void _initializeVideoPlayer() async {
    await Future.wait([
      _whygm2.initialize(),
      _whygm5.initialize(),
      _whygm6.initialize(),
    ]);

    _whygm2.setLooping(true);
    _whygm5.setLooping(true);
    _whygm6.setLooping(true);

    _whygm2.play();
    _whygm5.play();
    _whygm6.play();
  }

  @override
  void dispose() {
    _whygm2.dispose();
    _whygm5.dispose();
    _whygm6.dispose();
    super.dispose();
  }

  final List<Map<String, String>> ledLightPaths = [
    {
      'image': 'https://www.evervue.com/evervue/assets/warm-light.png',
      'light': 'Warm Light',
      'model': '(3000K)'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/cool-light.png',
      'light': 'Cool Light',
      'model': '(6000K)'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/true-light.png',
      'light': 'True Light',
      'model': '(2700K - 6200K)'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/multicolor-light.png',
      'light': 'Multi',
      'model': 'Color'
    },
  ];

  final List<Map<String, String>> philipsLedLightPaths = [
    {
      'image': 'https://www.evervue.com/evervue/assets/philips-warm.png',
      'light': 'Philips Warm Light',
      'model': '(2700K)'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/philips-mid-warm.png',
      'light': 'Philips Mid-Warm Light',
      'model': '(4000K)'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/philips-cool.png',
      'light': 'Philips Cool Light',
      'model': '(6500K)'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  child: SingleChildScrollView(
                      child: Center(
                    child: Column(children: [
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          children: [
                            SizedBox(
                              width: screenWidth * .8,
                              child: const Text(
                                'Why Should You Choose a Lighted Mirror?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffE3B369),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 20),
                              child: const Text(
                                'Those who have experienced a lighted mirror understand its advantages, and they often miss the integrated light when using a traditional mirror. With the light integrated into the mirror, you get a clear, shadow-free view of your face, providing a more accurate reflection of your appearance.\n\n'
                                'Grand Mirrors products offer the complete salon experience in a single package. Just hang the Grand Mirrors product, and you\'re all set. Not only do lighted mirrors enhance your grooming routine, but they also add a touch of sophistication and modernity to your space, creating an elevated and luxurious atmosphere.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          const AspectRatio(
                            aspectRatio: 2.4 / 1,
                            child: SlidingImages(),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 25),
                            child: const Divider(
                              height: 10,
                              indent: 5,
                              endIndent: 5,
                              thickness: 1,
                              color: Color(0xff9F9081),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
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
                              imageUrl:
                                  'https://www.evervue.com/evervue/assets/grand-mirrors-specification.jpg',
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: const Text(
                                'LIGHT OPTIONS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xff413831),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 25),
                              child: const Text(
                                'Grand Mirrors integrates a light transfer technology, which causes the light to be directed right towards you resulting in a very effective light that is up to 3 times brighter than other mirrors. Choose from Cool, Warm, True Light, Multi-Color, or Philips LEDs. For the Cool, Warm True light, we have wireless dimmers available. You also have the option to add Philips LED lights with dimmers.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.5,
                                ),
                              ),
                            ),
                            LEDLight(lightImages: ledLightPaths),
                            PhilipsLEDLight(
                                philipslightImages: philipsLedLightPaths),
                            Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: const Divider(
                                height: 10,
                                indent: 5,
                                endIndent: 5,
                                thickness: 1,
                                color: Color(0xff9F9081),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 600,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 15),
                                  child: const Text(
                                    'Why Grand Mirrors Is Different',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
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
                                  imageUrl:
                                      'https://www.evervue.com/evervue/assets/whygm-com-01.jpg',
                                ),
                                AspectRatio(
                                  aspectRatio: 0.62 / 1,
                                  child: VideoPlayer(_whygm2),
                                ),
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
                                    imageUrl:
                                        'https://www.evervue.com/evervue/assets/whygm-com-03.jpg'),
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
                                    imageUrl:
                                        'https://www.evervue.com/evervue/assets/whygm-com-04.jpg'),
                                AspectRatio(
                                  aspectRatio: 0.62 / 1,
                                  child: VideoPlayer(_whygm5),
                                ),
                                AspectRatio(
                                  aspectRatio: 0.62 / 1,
                                  child: VideoPlayer(_whygm6),
                                ),
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
                                    imageUrl:
                                        'https://www.evervue.com/evervue/assets/whygm-com-07.jpg'),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                    ]),
                  )),
                )
              ],
            ),
          ],
        ));
  }
}
