import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';

class SoundWaveCylinder extends StatefulWidget {
  const SoundWaveCylinder({super.key});

  @override
  State<SoundWaveCylinder> createState() => _SoundWaveCylinderState();
}

class _SoundWaveCylinderState extends State<SoundWaveCylinder> {
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
                        right: 0,
                        bottom: 0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: ifScreen
                              ? Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      constraints: BoxConstraints(
                                          maxHeight: screenHeight * .3),
                                      child: CachedNetworkImage(
                                          placeholder: (context, url) =>
                                              const Text(
                                                'Loading assets...',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 168, 0, 0),
                                                  fontSize: 16,
                                                ),
                                              ),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                          width: screenWidth * .15,
                                          imageUrl:
                                              'https://www.evervue.com/evervue/assets/outdoor-tv-two-soundwave-cylinder-speakers.png'),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                          maxHeight: screenHeight * .35),
                                      child: CachedNetworkImage(
                                          placeholder: (context, url) =>
                                              const Text(
                                                'Loading assets...',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 168, 0, 0),
                                                  fontSize: 16,
                                                ),
                                              ),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                          width: screenWidth * .15,
                                          imageUrl:
                                              'https://www.evervue.com/evervue/assets/outdoor-tv-weather-resistant-cylinder-speakers.png'),
                                    )
                                  ],
                                )
                              : Container(
                                  constraints: BoxConstraints(
                                    maxHeight: screenHeight * 0.62,
                                  ),
                                  child: CachedNetworkImage(
                                      placeholder: (context, url) => const Text(
                                            'Loading assets...',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 168, 0, 0),
                                              fontSize: 16,
                                            ),
                                          ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      width: screenWidth - 50,
                                      imageUrl:
                                          'https://www.evervue.com/evervue/assets/sw-cylinder-outdoor-tv.png'),
                                ),
                        )),
                    Positioned(
                      top: ifScreen ? 0 : 40,
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                              color: Color.fromARGB(
                                                  255, 168, 0, 0),
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
                                    'CYLINDER',
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
                    if (screenWidth < 699)
                      Column(
                        children: [
                          Text(
                            'Stainless Elegance',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'SoundWave Cylinder is available in two sizes and made of stainless-steel which can be safely placed anywhere in your backyard or garden.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    Stack(
                      children: [
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
                                'https://www.evervue.com/evervue/assets/outdoor-tv-cylinder-speakers-in-garden.png'),
                        if (screenWidth > 700)
                          Positioned(
                              top: screenHeight * 0.1,
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Color(0x88090909)),
                                padding: EdgeInsets.all(30),
                                width: screenWidth * 0.5,
                                child: Column(
                                  children: [
                                    Text(
                                      'Stainless Elegance',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'SoundWave Cylinder is available in two sizes and made of stainless-steel which can be safely placed anywhere in your backyard or garden.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    )
                                  ],
                                ),
                              ))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Different Sizes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'With the two built-in speakers and the flexibility you have to install them anywhere in your garden, you can create an outdoor TV experience you\'ll enjoy every time.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Container(
                width: screenWidth,
                color: Colors.black,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.black,
                      constraints: BoxConstraints(maxHeight: 700),
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
                            'https://www.evervue.com/evervue/assets/wavy-line-art-and-purple-background.png',
                        fit: BoxFit.cover,
                        height: screenHeight * 0.5,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
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
                            height: screenHeight * 0.45,
                            imageUrl:
                                'https://www.evervue.com/evervue/assets/20-inches-30-inches-cyclinder-speakers.png')),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20, left: 20, top: 30),
                width: screenWidth,
                color: Colors.black,
                child: Column(
                  children: [
                    Wrap(
                      spacing: 30,
                      children: [
                        SizedBox(
                          width: ifScreen
                              ? (screenWidth * 0.45) - 50
                              : screenWidth - 50,
                          child: Center(
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 400),
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
                                      'https://www.evervue.com/evervue/assets/three-cylinder-speakers-for-outdoor-tv.png'),
                            ),
                          ),
                        ),
                        Container(
                          width: ifScreen
                              ? (screenWidth * 0.5) - 50
                              : screenWidth - 50,
                          padding: EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Text(
                                'Surround your garden with the SoundWave Cylinder',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'SoundWave Cylinder connects directly to the Cosmos Outdoor TV and comes standard with a 20\' (6 meters) outdoor audio cable.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (screenWidth > 700)
                      SizedBox(
                        height: 50,
                      ),
                  ],
                ),
              ),
              Container(
                color: Colors.black,
                width: screenWidth,
                child: AspectRatio(
                  aspectRatio: ifScreen ? 1.91 / 1 : 0.69 / 1,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      double videoWidth = constraints.maxWidth;
                      double videoHeight = constraints.maxHeight;

                      return Stack(
                        children: [
                          Center(
                            child: VideoPlayerWidget(
                              source: ifScreen
                                  ? 'assets/cosmos/resources/home/cylinder-speaker-outdoor-tv.mp4'
                                  : 'assets/cosmos/resources/home/powerful-modern-speaker-mobile.mp4',
                            ),
                          ),
                          Positioned(
                              top: ifScreen
                                  ? videoHeight * .13
                                  : videoHeight * .26,
                              left:
                                  ifScreen ? videoWidth * .29 : videoWidth * .1,
                              child: Row(
                                children: [
                                  Text(
                                    'Speaker',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Row(
                                    children: [
                                      // if (screenWidth > 700)
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.white,
                                      ),
                                      Container(
                                        width: videoWidth * .07,
                                        height: 1,
                                        color: Colors.white,
                                      ),
                                    ],
                                  )
                                ],
                              )),
                          Positioned(
                              top: ifScreen
                                  ? videoHeight * .4
                                  : videoHeight * .48,
                              left:
                                  ifScreen ? videoWidth * .29 : videoWidth * .1,
                              child: Row(
                                children: [
                                  Text(
                                    'Speaker',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Row(
                                    children: [
                                      // if (screenWidth > 700)
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.white,
                                      ),
                                      Container(
                                        width: videoWidth * .07,
                                        height: 1,
                                        color: Colors.white,
                                      ),
                                    ],
                                  )
                                ],
                              )),
                          Positioned(
                              top: ifScreen
                                  ? videoHeight * .26
                                  : videoHeight * .37,
                              right:
                                  ifScreen ? videoWidth * .29 : videoWidth * .1,
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      // if (screenWidth > 700)
                                      Container(
                                        width: videoWidth * .07,
                                        height: 1,
                                        color: Colors.white,
                                      ),
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.white,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Tweeter',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              )),
                          Positioned(
                              top: ifScreen
                                  ? videoHeight * .55
                                  : videoHeight * .6,
                              right: ifScreen
                                  ? videoWidth * .22
                                  : videoWidth * .06,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      // if (screenWidth > 700)
                                      Container(
                                        width: videoWidth * .085,
                                        height: 1,
                                        color: Colors.white,
                                      ),
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'High Quality\nStainless Steel',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              )),
                          Positioned(
                              top: videoHeight * .7,
                              left:
                                  ifScreen ? videoWidth * .22 : videoWidth * .1,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    ifScreen
                                        ? 'Sturdy Mounting'
                                        : 'Sturdy\nMounting',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.white,
                                      ),
                                      // if (screenWidth > 700)
                                      Container(
                                        width: 1,
                                        height: 75,
                                        color: Colors.white,
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
