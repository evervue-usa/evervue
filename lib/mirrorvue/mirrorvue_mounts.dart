import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';

class MirrorVueMounts extends StatefulWidget {
  const MirrorVueMounts({super.key});

  @override
  State<MirrorVueMounts> createState() => _MirrorVueMountsState();
}

class _MirrorVueMountsState extends State<MirrorVueMounts> {
  int selectedIndex = 0;

  final List<Map<String, String>> mountOptions = [
    {
      'title': 'Standard Wall-Mount',
      'description':
          'Each MirrorVue comes equipped with standard wall-mount rails on the back of the mirror, allowing you to securely hang your MirrorVue to the mounting strip attached to your wall. Depending on the size of your MirrorVue, there will be either 2 or 4 mounting strips.',
      'videoUrl':
          'assets/mirrorvue/resources/highlights/custom-Mirror-TV-wall-mount.mp4'
    },
    {
      'title': 'Magnet Wall-Mount',
      'description':
          'If your space does not allow for the 1" (2.54 cm) lift needed for a regular wall-mount, the magnet mount is an excellent alternative. This option enables you to position the mirror under a cabinet without any gap between the mirror and the cabinet, ensuring a sleek finish.',
      'videoUrl':
          'assets/mirrorvue/resources/highlights/custom-Mirror-magnet-mount.mp4'
    },
    {
      'title': 'Recessed Wall-Mount',
      'description':
          'For a seamless integration, choose the Recessed Wall-Mount. This option allows the TV Unit section of the MirrorVue to be recessed into the wall or another flat surface. The mirror glass rests flush on the wall surface, secured by a sturdy, large amount of Velcro attached to the rear of the MirrorVue.',
      'videoUrl':
          'assets/mirrorvue/resources/highlights/MirrorVue-OLED-TV-recessed-mount.mp4'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool ifScreen = screenWidth > 700;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
        child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        constraints: const BoxConstraints(maxWidth: 700),
        child: Column(
          children: [
            Center(
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Text(
                'Mounting Options',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ),
            Column(
              children: [
                Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    mountOptions[selectedIndex]['title']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                ),
                Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    mountOptions[selectedIndex]['description']!,
                    textAlign: TextAlign.center,
                  ),
                ),
                ),
                Center(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: Container(
                    key: ValueKey(mountOptions[selectedIndex]['videoUrl']),
                    margin: const EdgeInsets.only(top: 30),
                    child: VideoPlayerWidget(
                      key: ValueKey(mountOptions[selectedIndex]['videoUrl']),
                      source: mountOptions[selectedIndex]['videoUrl']!,
                    ),
                  ),
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: ifScreen ? (700 * 0.28) : (screenWidth * 0.3),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 2.5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: selectedIndex == 0
                                        ? const Color(0xffc99e62)
                                        : const Color(0xff707070),
                                    width: 2.0,
                                  ),
                                ),
                                child: CachedNetworkImage(
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
                                        'https://www.evervue.com/evervue/assets/wall-mount-custom-Mirror-TV-standard.jpg')),
                            Text('Standard Wall-Mount',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: selectedIndex == 0
                                        ? const Color(0xffc99e62)
                                        : const Color(0xff707070)))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: ifScreen ? (700 * 0.28) : (screenWidth * 0.3),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 2.5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: selectedIndex == 1
                                      ? const Color(0xffc99e62)
                                      : const Color(0xff707070),
                                  width: 2.0,
                                ),
                              ),
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
                                      'https://www.evervue.com/evervue/assets/wall-mount-custom-Mirror-TV-magnet.jpg'),
                            ),
                            Text('Magnet Wall-Mount',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: selectedIndex == 1
                                        ? const Color(0xffc99e62)
                                        : const Color(0xff707070)))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: ifScreen ? (700 * 0.28) : (screenWidth * 0.3),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = 2;
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 2.5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: selectedIndex == 2
                                        ? const Color(0xffc99e62)
                                        : const Color(0xff707070),
                                    width: 2.0,
                                  ),
                                ),
                                child: CachedNetworkImage(
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
                                        'https://www.evervue.com/evervue/assets/wall-mount-custom-Mirror-TV-recessed-built-in.jpg'),
                              ),
                              Text(
                                'Recessed Wall-Mount',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: selectedIndex == 2
                                        ? const Color(0xffc99e62)
                                        : const Color(0xff707070)),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
        ),
      ))),
    );
  }
}
