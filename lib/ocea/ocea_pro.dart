import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/image_slider.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';

class OceaProPage extends StatefulWidget {
  const OceaProPage({super.key});

  @override
  State<OceaProPage> createState() => _OceaProPageState();
}

class _OceaProPageState extends State<OceaProPage> {
  int selectedIndex = 0;
  int selectedMediaIndex = 0;
  int selectedNewIndex = 0;
  int selectedThirdSectionIndex = 0;

  final List<Map<String, String>> mediaContent = [
    {
      'mediaFile':
          'assets/oceatv/resources/home/Bathroom-television-bracket.mp4',
      'label': 'SWIVEL',
      'paragraph':
          'Our aluminum swivel brackets provide the flexibility to pan, tilt, or retract the Ocea Pro from the wall, allowing you to easily adjust the viewing angle to your preference. These brackets are designed for durability and functionality, ensuring a secure and versatile installation.',
    },
    {
      'mediaFile': 'assets/oceatv/resources/home/Bracket-video-system.mp4',
      'label': 'LIFT',
      'paragraph':
          'The Ocea Pro automatic lift system is an innovative solution that lets you hide the TV when not in use and reveal it with the touch of a button. Compatible with the Ocea Pro 220 and Ocea Pro 280, this option adds an element of luxury and convenience to your bathroom entertainment experience.',
    },
    {
      'mediaFile':
          'assets/oceatv/resources/home/Drill-free-mount-television.mp4',
      'label': 'DRILL FREE',
      'paragraph':
          'With our unique Drill-Free wall mount system, you can securely mount the Ocea Pro without drilling any holes. Using special hangers and 3M adhesive pads, this option offers a damage-free and easy installation process. Each hook is rated to support up to 45 pounds/20 kilograms, and we also offer larger hooks designed to hold up to 65lbs/30kg each for larger Ocea Pro models.',
    },
    {
      'mediaFile':
          'assets/oceatv/resources/home/Television-in-one-bathroom.mp4',
      'label': 'HANG ON THE WALL',
      'paragraph':
          'The Ocea Pro can be easily hung on the wall using the four openings on the back, as the four hooks can be drilled into the wall. This mounting option places the Ocea Pro very close to the wall, leaving only a minimal gap. This sleek appearance sets it apart from traditional televisions.',
    },
  ];

  final List<Map<String, String>> firstMediaSectionContent = [
    {
      'mediaFile': 'https://www.evervue.com/evervue/assets/Shower-4.jpg',
      'label': 'Shower',
    },
    {
      'mediaFile':
          'https://www.evervue.com/evervue/assets/wet-room-smart-mirror-tv.jpg',
      'label': 'Bathtub',
    },
    {
      'mediaFile':
          'https://www.evervue.com/evervue/assets/Ocea-Sauna-Mobile-English.jpg',
      'label': 'Sauna',
    },
  ];

  final List<Map<String, String>> newMediaContent = [
    {
      'mediaFile':
          'https://www.evervue.com/evervue/assets/ocea-touch-buttons.jpg',
      'thumbnail':
          'https://www.evervue.com/evervue/assets/easy-touch-thumbnail.jpg',
      'paragraph':
          'Ocea Pro features three touch buttons on the front of the TV, making it simple to turn the TV on and off and adjust the volume without the need for a remote control.',
    },
    {
      'mediaFile':
          'assets/oceatv/resources/home/Google-assist-voice-control.mp4',
      'thumbnail':
          'https://www.evervue.com/evervue/assets/voice-control-thumbnail.jpg',
      'paragraph':
          'With Google Assistant pre-installed on the Ocea Pro, you can communicate with your TV by giving commands and asking questions, just as you would with Google Assistant on your other devices.',
    },
    {
      'mediaFile': 'assets/oceatv/resources/home/bathroom-remote-control.mp4',
      'thumbnail':
          'https://www.evervue.com/evervue/assets/zepp-remote-thumbnail.jpg',
      'paragraph':
          '1. This multi-functional remote includes a built-in keyboard for effortless control over your TV.\n\n2. The remote comes with a drill-free holder featuring suction cups for easy attachment to the wall.\n\n3. The Ocea Pro Zepp provides quick access to Smart TV functions.\n\n4. Equipped with a built-in rechargeable lithium battery.\n\n5. A waterproof skin cover ensures the remote is safe to use in the bathroom. (The remote control has a limited warranty)',
    },
    {
      'mediaFile': 'assets/oceatv/resources/home/Made-to-be-wet-free.mp4',
      'thumbnail':
          'https://www.evervue.com/evervue/assets/touchscreen-thumbnail.jpg',
      'paragraph':
          'All Ocea Pro models come standard with a full-screen touchscreen. When the TV is wet, the touchscreen works, and you can easily navigate through the many smart applications available from Ocea Pro.',
    },
  ];

  final List<Map<String, String>> thirdSectionMediaContent = [
    {
      'mediaFile':
          'https://www.evervue.com/evervue/assets/cable-bathroom-tv.jpg',
      'thumbnail': 'https://www.evervue.com/evervue/assets/Cable-TV.jpg',
    },
    {
      'mediaFile': 'assets/oceatv/resources/home/bathroom-tv-antenna.mp4',
      'thumbnail': 'https://www.evervue.com/evervue/assets/Cable-TV-2.jpg',
    },
  ];

  Widget buildWoodColors() {
    final List<String> woodColors = [
      'https://www.evervue.com/evervue/assets/4K.jpg',
      'https://www.evervue.com/evervue/assets/Touchscreen.jpg',
      'https://www.evervue.com/evervue/assets/Voice-Control.jpg',
    ];

    final List<String> woodLabels = [
      '4K UHD',
      'Touchscreen',
      'Voice\nControl',
    ];

    return buildImageGrid(woodColors, woodLabels);
  }

  Widget buildsecondicon() {
    final List<String> buildsecondiconimg = [
      'https://www.evervue.com/evervue/assets/Water-Resistant.jpg',
      'https://www.evervue.com/evervue/assets/HQ-Audio.jpg',
      'https://www.evervue.com/evervue/assets/WiFi.jpg',
      'https://www.evervue.com/evervue/assets/Bluetooth.jpg',
    ];

    final List<String> buildsecondlabels = [
      'Water\nResistant',
      'HQ Audio',
      'Wi-Fi',
      'Bluetooth',
    ];

    return buildImageGrid(buildsecondiconimg, buildsecondlabels);
  }

  Widget tableticons() {
    final List<String> tableticons = [
      'https://www.evervue.com/evervue/assets/4K.jpg',
      'https://www.evervue.com/evervue/assets/Touchscreen.jpg',
      'https://www.evervue.com/evervue/assets/Voice-Control.jpg',
      'https://www.evervue.com/evervue/assets/Water-Resistant.jpg',
      'https://www.evervue.com/evervue/assets/HQ-Audio.jpg',
      'https://www.evervue.com/evervue/assets/WiFi.jpg',
      'https://www.evervue.com/evervue/assets/Bluetooth.jpg',
    ];

    final List<String> tabletLabels = [
      '4K UHD',
      'Touchscreen',
      'Voice\nControl',
      'Water\nResistant',
      'HQ Audio',
      'Wi-Fi',
      'Bluetooth',
    ];

    return buildImageGrid(tableticons, tabletLabels);
  }

  final List<Map<String, String>> featureContent = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/bathroom-voice-control.jpg',
      'title': 'Wi-Fi/LAN',
      'description':
          'Ocea Pro offers both Wi-Fi and LAN connectivity for effortless streaming and browsing.'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/bathroom-tv-control.jpg',
      'title': 'Cable-RF',
      'description':
          'In selected regions, you can connect your cable TV, RF cable to the Ocea Pro.'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/bathroom-tv-voice.jpg',
      'title': 'Bluetooth',
      'description':
          'Play your favorite tunes by connecting your smartphone to the Ocea Pro via Bluetooth.'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/bathoom-tv-touch-screen.jpg',
      'title': 'Gaming',
      'description':
          'Connect your gaming equipment through the additional HDMI port on the Ocea Pro.'
    },
  ];

  Widget buildImageGrid(List<String> images, List<String> labels) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int itemsPerRow = (constraints.maxWidth > 600) ? images.length : 7;

        double imageSize = (constraints.maxWidth < 600) ? 40.0 : 60.0;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            (images.length / itemsPerRow).ceil(),
            (rowIndex) {
              int startIndex = rowIndex * itemsPerRow;
              int endIndex = (startIndex + itemsPerRow).clamp(0, images.length);

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(endIndex - startIndex, (index) {
                  int actualIndex = startIndex + index;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        buildIcon(images[actualIndex], imageSize),
                        const SizedBox(height: 5.0),
                        buildLabel(labels[actualIndex]),
                      ],
                    ),
                  );
                }),
              );
            },
          ),
        );
      },
    );
  }

  Widget oceaIcons() {
    final List<String> oceaAndroidIcons = [
      'https://www.evervue.com/evervue/assets/Ocea-Android-O-Icon.jpg',
      'https://www.evervue.com/evervue/assets/Ocea-Youtube-Icon.jpg',
      'https://www.evervue.com/evervue/assets/Apple-TV-Icon.jpg',
      'https://www.evervue.com/evervue/assets/Amazon-Fire-TV-Icon.jpg',
      'https://www.evervue.com/evervue/assets/Netflix-Icon.jpg',
    ];

    return buildOceaIconGrid(oceaAndroidIcons);
  }

  Widget buildOceaIconGrid(List<String> images) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double iconSize = (constraints.maxWidth > 600)
            ? 60.0
            : (constraints.maxWidth > 400)
                ? 60.0
                : 30.0;

        int itemsPerRow = (constraints.maxWidth > 600) ? images.length : 7;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            (images.length / itemsPerRow).ceil(),
            (rowIndex) {
              int startIndex = rowIndex * itemsPerRow;
              int endIndex = (startIndex + itemsPerRow).clamp(0, images.length);

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(endIndex - startIndex, (index) {
                  int actualIndex = startIndex + index;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: buildIcon(
                      images[actualIndex],
                      iconSize,
                    ),
                  );
                }),
              );
            },
          ),
        );
      },
    );
  }

  Widget buildIcon(String imagePath, double size) {
    return CachedNetworkImage(
      placeholder: (context, url) => const Text(
        'Loading assets...',
        style: TextStyle(
          color: Color.fromARGB(255, 168, 0, 0),
          fontSize: 16,
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      imageUrl: imagePath,
      width: size,
      height: size,
    );
  }

  Widget buildLabel(String labelText) {
    return Container(
      height: 50.0,
      alignment: Alignment.topCenter,
      child: Text(
        labelText,
        style: const TextStyle(fontSize: 10.0),
        textAlign: TextAlign.center,
      ),
    );
  }

  void _onMediaTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget buildMediaContent() {
    final String mediaFile = mediaContent[selectedIndex]['mediaFile']!;

    final String paragraph = mediaContent[selectedIndex]['paragraph']!;

    final screenWidth = MediaQuery.of(context).size.width;

    final double paragraphTextSize = screenWidth > 600 ? 14 : 14;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 700),
          child: mediaFile.endsWith('.mp4')
              ? AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: VideoPlayerWidget(
                      key: ValueKey(mediaFile), source: mediaFile),
                )
              : AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: CachedNetworkImage(
                    placeholder: (context, url) => const Text(
                      'Loading assets...',
                      style: TextStyle(
                        color: Color.fromARGB(255, 168, 0, 0),
                        fontSize: 16,
                      ),
                    ),
                    key: ValueKey(mediaFile),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    imageUrl: mediaFile,
                    width: screenWidth,
                    fit: BoxFit.cover,
                  ),
                ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(mediaContent.length, (index) {
              return GestureDetector(
                onTap: () {
                  _onMediaTap(index);
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: selectedIndex == index
                            ? const Color(0xff0066ff)
                            : const Color(0xffcccccc),
                        width: 3,
                      ),
                    ),
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      mediaContent[index]['label']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: selectedIndex == index
                            ? const Color(0xff0066ff)
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            paragraph,
            style: TextStyle(
              fontSize: paragraphTextSize,
            ),
          ),
        ),
      ],
    );
  }

  void _onFirstSectionMediaTap(int mediaIndex) {
    if (mediaIndex == selectedMediaIndex) return;

    setState(() {
      selectedMediaIndex = mediaIndex;
    });
  }

  void _onNewMediaTap(int index) {
    setState(() {
      selectedNewIndex = index;
    });
  }

  Widget buildFirstSectionMediaContent() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: CachedNetworkImage(
        placeholder: (context, url) => const Text(
          'Loading assets...',
          style: TextStyle(
            color: Color.fromARGB(255, 168, 0, 0),
            fontSize: 16,
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        imageUrl: firstMediaSectionContent[selectedMediaIndex]['mediaFile']!,
        key: ValueKey<String>(
            firstMediaSectionContent[selectedMediaIndex]['mediaFile']!),
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildFirstSection() {
    final screenWidth = MediaQuery.of(context).size.width;

    final double buttonPaddingHorizontal = screenWidth > 600 ? 30 : 15;
    final double buttonTextSize = screenWidth > 600 ? 16 : 12;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(firstMediaSectionContent.length, (index) {
            return Flexible(
              child: GestureDetector(
                onTap: () {
                  _onFirstSectionMediaTap(index);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: buttonPaddingHorizontal,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: selectedMediaIndex == index
                        ? const Color(0xff0066ff)
                        : const Color(0xfff0f0f0),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      firstMediaSectionContent[index]['label']!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: buttonTextSize,
                        color: selectedMediaIndex == index
                            ? Colors.white
                            : const Color(0xff555555),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        const SizedBox(height: 10),
        buildFirstSectionMediaContent(),
      ],
    );
  }

  Widget buildNewMediaContent() {
    final String mediaFile = newMediaContent[selectedNewIndex]['mediaFile']!;
    final String paragraph = newMediaContent[selectedNewIndex]['paragraph']!;

    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: Container(
              constraints: BoxConstraints(maxWidth: 700),
              child: mediaFile.endsWith('.mp4')
                  ? VideoPlayerWidget(
                      key: ValueKey(mediaFile),
                      source: mediaFile,
                    )
                  : CachedNetworkImage(
                      placeholder: (context, url) => const Text(
                        'Loading assets...',
                        style: TextStyle(
                          color: Color.fromARGB(255, 168, 0, 0),
                          fontSize: 16,
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      imageUrl: mediaFile,
                      key: ValueKey(mediaFile),
                      width: screenWidth,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(newMediaContent.length, (index) {
              return Flexible(
                child: GestureDetector(
                  onTap: () {
                    _onNewMediaTap(index);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: selectedNewIndex == index
                              ? const Color(0xff0066ff)
                              : Colors.transparent,
                          width: 3,
                        ),
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
                      imageUrl: newMediaContent[index]['thumbnail']!,
                      width: screenWidth > 600 ? 80 : 60,
                      height: screenWidth > 600 ? 80 : 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              paragraph,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  void _onThirdSectionMediaTap(int index) {
    setState(() {
      selectedThirdSectionIndex = index;
    });
  }

  Widget buildThirdSection() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildThirdSectionMediaContent(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(thirdSectionMediaContent.length, (index) {
              return GestureDetector(
                onTap: () {
                  _onThirdSectionMediaTap(index);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: selectedThirdSectionIndex == index
                            ? const Color(0xff0066ff)
                            : Colors.transparent,
                        width: 3,
                      ),
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
                    imageUrl: thirdSectionMediaContent[index]['thumbnail']!,
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget buildThirdSectionMediaContent() {
    final String mediaFile =
        thirdSectionMediaContent[selectedThirdSectionIndex]['mediaFile']!;

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: Container(
        constraints: BoxConstraints(maxWidth: 700),
        child: mediaFile.endsWith('.mp4')
            ? VideoPlayerWidget(
                key: ValueKey<String>(mediaFile),
                source: mediaFile,
              )
            : CachedNetworkImage(
                placeholder: (context, url) => const Text(
                  'Loading assets...',
                  style: TextStyle(
                    color: Color.fromARGB(255, 168, 0, 0),
                    fontSize: 16,
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageUrl: mediaFile,
                key: ValueKey<String>(mediaFile),
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
      ),
    );
  }

  Widget buildResponsiveFeatureSection() {
    final screenWidth = MediaQuery.of(context).size.width;

    double containerWidth = screenWidth > 600 ? 200 : screenWidth * 0.3;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        constraints: const BoxConstraints(
          maxWidth: 600,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(2, (index) {
                return Container(
                  width: containerWidth,
                  constraints: const BoxConstraints(
                    maxWidth: 250,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        imageUrl: featureContent[index]['image']!,
                        height: 80,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        featureContent[index]['title']!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        featureContent[index]['description']!,
                      ),
                    ],
                  ),
                );
              }),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(2, (index) {
                return Container(
                  width: containerWidth,
                  constraints: const BoxConstraints(
                    maxWidth: 250,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        imageUrl: featureContent[index + 2]['image']!,
                        height: 80,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        featureContent[index + 2]['title']!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        featureContent[index + 2]['description']!,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 0),
                  child: const VideoPlayerWidget(
                    source:
                        'assets/oceatv/resources/home/bathroom-tv-television-banner.mp4',
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Visibility(
                        visible: MediaQuery.of(context).size.width < 600,
                        child: Container(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              buildWoodColors(),
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width < 600,
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xFFd1d1d1),
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              buildsecondicon(),
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width > 600,
                        child: Container(
                          padding: const EdgeInsets.only(top: 30),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xFFd1d1d1),
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              tableticons(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Where should it be used?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'The Ocea Pro Bathroom TV is designed with versatility in mind, making it the perfect addition to a variety of spaces where water and moisture are present. Ocea Pro\'s water-resistant design ensures its seamless and safe operation in wet environments. Some ideal locations for the Ocea Pro Bathroom TV include:',
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '1. Shower Enclosures: Transform your daily shower routine into a more enjoyable and entertaining experience by installing the Ocea Pro in your shower enclosure. Sing along to your favorite tunes, catch up on the latest news, or watch your favorite show while enjoying the relaxing sensation of warm water.\n',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '2. Bathtub Areas: Elevate your bath time by bringing the Ocea Pro into your bathtub area. Relax with calming music, indulge in a soothing movie, or binge-watch your favorite series while soaking in a luxurious bubble bath.\n',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '3. Sauna Rooms: Enhance your sauna experience with the Ocea Pro, providing you with engaging content to keep you entertained or informed while you unwind and enjoy the rejuvenating heat.\n',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: buildFirstSection(),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Select Your Perfect Size',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          constraints: BoxConstraints(maxWidth: 700),
                          margin: const EdgeInsets.only(top: 30),
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
                                'https://www.evervue.com/evervue/assets/ocea-bathroom-tv.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Experience the Ocea Pro Bathroom TV in a size that perfectly fits your space, with options ranging from 18" to 75". No matter which size you choose, you can enjoy all the exceptional features that the Ocea Pro has to offer.\n\nThe Ocea Pro Bathroom TV offers you the flexibility to choose between two mounting configurations to suit your aesthetic preferences and space requirements. Both options provide a sleek, stylish appearance while maintaining the outstanding performance and safety features of the Ocea Pro.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Surface or Recessed Mounting: Customize Your Installation',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          constraints: BoxConstraints(maxWidth: 700),
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/oceatv/resources/home/bathroom-tv-recessed.mp4',
                          )),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
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
                                'https://www.evervue.com/evervue/assets/bathroom-tv-recessed.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '1. Recessed Mount: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text:
                                              ' With this option, the Ocea Pro is built into the wall, creating a seamless and flush appearance that blends effortlessly with your bathroom decor. This installation method is perfect for those seeking a minimalist and streamlined look, and it saves space in smaller or more compact areas.\n',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '2. Surface Mount: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text:
                                              ' The Surface Mount configuration places the Ocea Pro against the wall, providing a quick and easy installation process that doesn\'t require any modifications to your wall structure. This option is ideal for those who prefer a straightforward setup or have walls that cannot accommodate a recessed installation.\n',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Select Your Surface Mount: Customize Your Viewing Experience',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Pro offers a variety of high-quality mounting options to cater to your specific needs, ensuring a comfortable and tailored viewing experience in your bathroom or other moisture-rich environments.',
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: buildMediaContent(),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          '12 and 24 Volts Safe:\nUniversal Power Compatibility',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          constraints: BoxConstraints(maxWidth: 700),
                          margin: const EdgeInsets.only(top: 30),
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
                                'https://www.evervue.com/evervue/assets/24volts-safe.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                  'https://www.evervue.com/evervue/assets/24vsafe.jpg',
                            ),
                            const SizedBox(width: 20),
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
                                  'https://www.evervue.com/evervue/assets/12vsafe.jpg',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'The Ocea Pro Bathroom TV is designed with safety and global compatibility in mind, featuring a 12 or 24-volt power supply system. Each Ocea Pro comes with its own power supply, suitable for use anywhere in the world (AC plug varies per region). Simply place the power supply in a secure location, and you\'re all set. For added convenience, you can also order an additional power extension cable, up to 20\' in length (6 meters), ensuring easy installation and seamless integration into your space.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Full-Screen Touch Display:\n Effortless Navigation',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          constraints: BoxConstraints(maxWidth: 700),
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/oceatv/resources/home/World-first-class-television.mp4',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'All Ocea Pro TVs are equipped with a full touchscreen display, making it easier than ever to navigate the many Smart TV options. The responsive touch display works flawlessly even when wet, ensuring uninterrupted control over your entertainment experience in any moisture-rich environment. Browse your favorite streaming platforms, adjust settings, or access other smart features with just a few taps on the Ocea Pro\'s intuitive touch interface.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Pro: Simple to Use and Packed with Features',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            buildNewMediaContent(),
                          ],
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints(maxWidth: 700),
                        margin: const EdgeInsets.only(top: 30),
                        child: const ImageCarousel(
                          imagePaths: [
                            'https://www.evervue.com/evervue/assets/AUSTRALIA.jpg',
                            'https://www.evervue.com/evervue/assets/sofitel.jpg',
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Easy Connection',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          constraints: BoxConstraints(maxWidth: 700),
                          margin: const EdgeInsets.only(top: 30, bottom: 10),
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
                                'https://www.evervue.com/evervue/assets/bathroom-wifi.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: buildResponsiveFeatureSection(),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Pro: Powered by Android for Smart Entertainment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          constraints: BoxConstraints(maxWidth: 700),
                          margin: const EdgeInsets.only(top: 30),
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
                                'https://www.evervue.com/evervue/assets/Ocea-is-Smart-Mobile.jpg',
                          )),
                      Container(
                        padding: const EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            oceaIcons(),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
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
                                'https://www.evervue.com/evervue/assets/Group.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'The Ocea Pro Bathroom TV is equipped with the latest Android Smart TV application, making it smarter and more versatile than ever. Enjoy a wealth of entertainment options, including Netflix, YouTube, and live television (through your provider), all at your fingertips.\n\nSetting up the Ocea Pro is quick and easy, so you can start enjoying your favorite content in no time:',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '1. Plug in: Connect the Ocea Pro to a power source using the provided power supply.\n',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '2. Connect to Wi-Fi: Follow the on-screen instructions to connect your Ocea Pro to your Wi-Fi network.\n',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '3. Ready to use and enjoy: With your Ocea Pro connected and powered on, you can now access your favorite streaming platforms, live television, and more!\n',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Pro: Ready for anything, Anywhere',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: buildThirdSection(),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
