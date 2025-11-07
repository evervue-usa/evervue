import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TouchControlPage extends StatelessWidget {
  const TouchControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              centerTitle: false,
              scrolledUnderElevation: 0.0,
              backgroundColor: Colors.white,
              flexibleSpace: PreferredSize(
                  preferredSize: const Size.fromHeight(80.0),
                  child: SafeArea(
                      child: Align(
                    alignment: Alignment.bottomCenter,
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
                          'https://www.evervue.com/evervue/assets/touch-control.png',
                      fit: BoxFit.contain,
                    ),
                  ))),
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(4.0),
                  child: Divider(
                    height: 10,
                    indent: 15,
                    endIndent: 15,
                    thickness: 1,
                    color: Color(0xffC9B593),
                  )),
            ),
            body: SingleChildScrollView(
              child: Center(
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
                      imageUrl:
                          'https://www.evervue.com/evervue/assets/banner-touch-control.jpg',
                      width: double.infinity,
                    ),
                    Container(
                      margin: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          const Text(
                              'Experience the ease and simplicity of controlling your mirror lights with Grand Mirrors Touch Control. Designed for effortless operation, our touch control system offers a host of features to enhance your mirror experience.',
                              style: TextStyle(
                                height: 1.5,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                              '• Wireless and to be used within 50\' / 15 meters of the mirror.\n'
                              '• Turn the mirror on and off, change the brightness, change the color of the LED light, program and save personal setting.\n'
                              '• Smooth on-off. (the light decreases and increases in brightness when turning off and on).\n'
                              '• Support different mirrors with only one controller.\n'
                              '• Supports up 4 controllers, so use where convenient.\n'
                              '• Use the controller anywhere you want. Mount to the wall, or on the countertop, stick it against the mirror, or just carry around.\n'
                              '• Sync easily to the mirror light.\n'
                              '• Stylish and durable design. Font is made of durable glass, easy to clean.\n'
                              '• Use 2 x AAA batteries (estimated time life batteries: 14 months with average use).',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                height: 1.5,
                              )),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 25),
                            child: Wrap(
                              spacing: 10,
                              children: [
                                SizedBox(
                                  width: (screenWidth - 70) / 3,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
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
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                            imageUrl:
                                                'https://www.evervue.com/evervue/assets/led.png'),
                                      ),
                                      const Text(
                                        'TouchControl\n400',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff9F9081),
                                          height: 1.5,
                                        ),
                                      ),
                                      const Text(
                                        'For LED Cool,\nWarm, and Philips\nLED Light',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          height: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: (screenWidth - 70) / 3,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
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
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                            imageUrl:
                                                'https://www.evervue.com/evervue/assets/true.png'),
                                      ),
                                      const Text(
                                        'TouchControl\n430',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff9F9081),
                                          height: 1.5,
                                        ),
                                      ),
                                      const Text(
                                        'For LED True Light\n\n',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          height: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: (screenWidth - 70) / 3,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
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
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                            imageUrl:
                                                'https://www.evervue.com/evervue/assets/rgb.png'),
                                      ),
                                      const Text(
                                        'TouchControl\n450',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff9F9081),
                                          height: 1.5,
                                        ),
                                      ),
                                      const Text(
                                        'For LED MultiColor\n\n',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          height: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: screenWidth * 0.85,
                            child: const Text(
                              'Wi-Fi Control 1000:\nThe Ultimate Solution for Multiple Mirror Management',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xff413831),
                              ),
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              width: (screenWidth - 50) / 3,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
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
                                        imageUrl:
                                            'https://www.evervue.com/evervue/assets/wifi.png'),
                                  ),
                                  const Text(
                                    'Wi-Fi Control',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff9F9081),
                                      height: 1.5,
                                    ),
                                  ),
                                  const Text(
                                    'For multiple mirrors',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                              'Wi-Fi Control 1000 is the perfect answer for situations where multiple mirrors are installed, such as in salons or large residences. This advanced control system allows you to manage and customize the lighting settings of up to 16 mirrors independently or simultaneously, making it an efficient time-saver.',
                              style: TextStyle(
                                height: 1.5,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            constraints: const BoxConstraints(maxWidth: 500),
                            width: screenWidth,
                            child: const VideoPlayerWidget(
                                source:
                                    'assets/grandmirrors/videos/true-light-wireless.mp4'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                              'Embrace the versatility of Grand Mirrors True Light Technology, where you no longer have to choose between cool and warm light - enjoy both simultaneously.',
                              style: TextStyle(
                                height: 1.5,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                              'Preparing for a day at work? The cool tone simulates office lighting, while the warm colour creates an inviting atmosphere for a relaxing evening or a night out',
                              style: TextStyle(
                                height: 1.5,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                              'Looking to match the light precisely with other lights in your bathroom? Choose from the full spectrum between 2700K and 6200K, and effortlessly adjust the colour and brightness using the wireless remote control to harmonise with your other lighting fixtures. Transform your space with Grand Mirrors True Light Technology, offering unparalleled flexibility and control to create the perfect ambiance for any occasion.',
                              style: TextStyle(
                                height: 1.5,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                              'Transform your space with Grand Mirrors True Light Technology, offering unparalleled flexibility and control to create the perfect ambiance for any occasion.',
                              style: TextStyle(
                                height: 1.5,
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 15,
              child: FloatingActionButton.small(
                elevation: 2,
                shape: const CircleBorder(),
                backgroundColor: Colors.transparent,
                onPressed: _whatsApp,
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
                        'https://www.evervue.com/evervue/assets/whatsapp.png'),
              ))
        ],
      )),
    );
  }
}

Future<void> _whatsApp() async {
  const url = 'https://api.whatsapp.com/send?phone=19494414262';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
