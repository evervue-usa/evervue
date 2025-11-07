import 'package:evervue/templates/image_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OceaStylePage extends StatefulWidget {
  const OceaStylePage({super.key});

  @override
  State<OceaStylePage> createState() => _OceaStylePageState();
}

class _OceaStylePageState extends State<OceaStylePage> {

  Future<void> _launchURL() async {
    final Uri url = Uri.parse('https://www.mirrorfeeds.com/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
  int selectedIndex = 0;
  final List<Map<String, String>> mediaContent = [
    {
      'mediaFile':
          'assets/oceatv/resources/home/sophisticated-ocea-style-bathroom-tv.mp4',
      'label': 'BATHTUB',
      'thumbnail':
          'https://www.evervue.com/evervue/assets/wall-ocea-style-mirror-television.jpg',
    },
    {
      'mediaFile':
          'assets/oceatv/resources/home/shower-room-with-ocea-style-tv.mp4',
      'label': 'SHOWER',
      'thumbnail':
          'https://www.evervue.com/evervue/assets/icon-ocea-style-oled-television.jpg',
    },
    {
      'mediaFile':
          'https://www.evervue.com/evervue/assets/best-smart-bathroom-ocea-style-tv.jpg',
      'label': 'TUB SHOWER',
      'thumbnail':
          'https://www.evervue.com/evervue/assets/water-resistant-thumb-ocea-style-tv.jpg',
    },
  ];

  Widget buildWoodColors() {
    final List<Map<String, String>> woodItems = [
      {
        'image':
            'https://www.evervue.com/evervue/assets/bathroom-tv-ideas-ocea-style.jpg',
        'label': 'White Oak',
      },
      {
        'image':
            'https://www.evervue.com/evervue/assets/alluminum-alloy-framed-water-resistant-tv.jpg',
        'label': 'Mahogany',
      },
      {
        'image':
            'https://www.evervue.com/evervue/assets/personalized-bathroom-evervue-tv.jpg',
        'label': 'American Walnut',
      },
      {
        'image':
            'https://www.evervue.com/evervue/assets/bathroom-wall-ocea-colored-frame-tv.jpg',
        'label': 'Clear Pine',
      },
      {
        'image':
            'https://www.evervue.com/evervue/assets/ocea-style-wood-design-framed-tv.jpg',
        'label': 'Cherry',
      },
    ];

    return buildWrap(woodItems);
  }

  Widget buildUniqueColors() {
    final List<Map<String, String>> uniqueItems = [
      {
        'image':
            'https://www.evervue.com/evervue/assets/bathroom-ocea-style-wood-design-frame.jpg',
        'label': 'Citrine Bronze',
      },
      {
        'image':
            'https://www.evervue.com/evervue/assets/ocea-style-tv-framed-decor-ideas.jpg',
        'label': 'Midnight Black',
      },
      {
        'image':
            'https://www.evervue.com/evervue/assets/alluminum-color-frame-for-bathroom-evervue-tv.jpg',
        'label': 'Aurora Gold',
      },
      {
        'image':
            'https://www.evervue.com/evervue/assets/decor-amber-gold-framed-ocea.jpg',
        'label': 'Amber Gold',
      },
      {
        'image':
            'https://www.evervue.com/evervue/assets/4k-tv-ideas-for-bathroom.jpg',
        'label': 'Snow Frost White',
      },
      {
        'image':
            'https://www.evervue.com/evervue/assets/ash-gray-framed-decor-ocea-style-tv.jpg',
        'label': 'Ash Gray',
      },
    ];

    return buildWrap(uniqueItems);
  }

  Widget buildWrap(List<Map<String, String>> items) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidthPerItem = (constraints.maxWidth / 2) - 20;

        return Center(
          child: Wrap(
            spacing: 20.0,
            runSpacing: 30.0,
            alignment:
                items.length == 1 ? WrapAlignment.start : WrapAlignment.start,
            runAlignment: WrapAlignment.center,
            children: items.map((item) {
              return SizedBox(
                width: maxWidthPerItem,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipOval(
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
                        imageUrl: item['image'] ??
                            'https://www.evervue.com/evervue/assets/bathroom-tv-ideas-ocea-style.jpg',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      item['label'] ?? 'White Oak',
                      style: const TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }

  void _onMediaTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget buildMediaContent() {
    final String mediaFile = mediaContent[selectedIndex]['mediaFile']!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
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
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(mediaContent.length, (index) {
            return Flexible(
              child: GestureDetector(
                onTap: () {
                  _onMediaTap(index);
                },
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
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
                          imageUrl: mediaContent[index]['thumbnail']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      mediaContent[index]['label']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: selectedIndex == index
                            ? const Color(0xff000000)
                            : const Color(0xff555555),
                      ),
                    ),
                    const SizedBox(height: 5),
                    selectedIndex == index
                        ? Container(
                            height: 2,
                            width: 80,
                            color: const Color(0xffc7a854),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 0),
                child: const ImageCarousel(
                  imagePaths: [
                    'https://www.evervue.com/evervue/assets/Ocea-Style-Mirror-TV-In-The-Bathroom.jpg',
                    'https://www.evervue.com/evervue/assets/bathroom-oled-ocea-style-television.jpg',
                    'https://www.evervue.com/evervue/assets/moisture-proof-luxury-hotel-tv.jpg',
                    'https://www.evervue.com/evervue/assets/built-in-tv-water-resistant.jpg',
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Ocea',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 5),
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
                                      'https://www.evervue.com/evervue/assets/ocea-style-bathroom-evervue-tv.jpg',
                                  height: 30,
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Sophisticated Bathroom TV',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: buildMediaContent(),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Style is a smart bathroom television designed to elevate your relaxation and entertainment experience. Boasting water-resistant construction, Android Smart capabilities, easy installation, and effortless usability, this innovative bathroom TV is as stylish as it is functional.\n\nWith a range of colors, designs, and sizes to choose from, the Ocea Style TV seamlessly blends with your bathroom decor, adding a touch of sophistication and elegance.\n\nWhen the Ocea Style is turned off, its true magic is revealed: the TV screen disappears completely and transforms into a stunning silver mirror, enhancing the aesthetics of your space and serving as a practical addition to your bathroom.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Discover Your Ocea Style: Personalized Bathroom TV',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                                'https://www.evervue.com/evervue/assets/smart-framed-bathroom-tv-ocea-style.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Style TV can be customized to match the colors of your bathroom, ensuring a seamless and stylish integration.\n\nChoose from 5 Unique Wood Designs: Our Ocea Style frames are made of a strong, water-resistant aluminum alloy, ensuring durability and maintenance-free enjoyment.',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            buildWoodColors(),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Beautiful TV for Your Bathroom',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                                'https://www.evervue.com/evervue/assets/frame-ideas-for-ocea-style-tv.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'In addition to wood designs, Ocea Style is also available in a range of beautiful matte aluminum colors to suit your taste and decor.',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Column(
                          children: [
                            buildUniqueColors(),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Style is Extremely Intelligent',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                                'https://www.evervue.com/evervue/assets/smart-ocea-style-best-tv-mirror.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'The Ocea Style is a fully functional smart bathroom tv, offering a wealth of entertainment options right at your fingertips. Simply connect to Wi-Fi, log in to your account, and explore the web.\n\nEnjoy Netflix, YouTube, the latest news, and live TV (by downloading your provider\'s app). View your photo albums, connect with friends, and do so much more.\n\nWith the Ocea Style, you\'ll have access to almost everything you can do on your phone, bringing a world of entertainment and convenience to your bathroom.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'You can do the talking: Smart Voice Control',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                                'https://www.evervue.com/evervue/assets/smart-voice-control-for-bathroom-tv-ocea-style.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'The Ocea Style is designed for seamless interaction, working with both Google Assistant and Alexa to provide a truly hands-free experience.\n\nThe Zepp Remote Pro Control, included with your Ocea Style, features a built-in microphone, making voice commands simple and convenient.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Worry-Free Zepp: The Ultimate Bathroom Companion',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          width: 700,
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/oceatv/resources/home/zepp-remote-pro-bathroom-tv.mp4',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'The Worry-Free Zepp comes standard with the Ocea Style, allowing you to control all Smart TV functions wirelessly. Staying up-to-date with your Facebook and Instagram accounts is effortless thanks to the built-in keyboard. Need assistance? Just ask Alexa or Google Assistant using the built-in microphone.\n\nDesigned with your bathroom in mind, the Zepp Remote Pro includes a water-resistant cover and a handy holder with suction cups, enabling you to securely place it wherever you want.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Elegant TV Design: A Sleek Addition to Your Bathroom',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                                'https://www.evervue.com/evervue/assets/bathroom-wall-mirror-tv-ideas-from-evervue.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            const Text(
                              'Ocea Style boasts an ultra-slim design, with a thickness of just 1.4" (35mm), ensuring it looks stunning in any bathroom. The sides of the Ocea Style fit closely to the wall, providing a sleek and seamless appearance.',
                            ),
                            const SizedBox(height: 30),
                            // CachedNetworkImage(
                            //   placeholder: (context, url) => const Text(
                            //     'Loading assets...',
                            //     style: TextStyle(
                            //       color: Color.fromARGB(255, 168, 0, 0),
                            //       fontSize: 16,
                            //     ),
                            //   ),
                            //   errorWidget: (context, url, error) =>
                            //       const Icon(Icons.error),
                            //   imageUrl:
                            //       'https://www.evervue.com/evervue/assets/ocea-style-logo.png',
                            //   width: screenWidth,
                            //   fit: BoxFit.cover,
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          '12 Volts Safe, Water-resistant: Peace of Mind Guaranteed',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                                'https://www.evervue.com/evervue/assets/outdoor-smart-tv-ocea-style.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Designed with safety in mind, the Ocea Style Bathroom TV is powered by a 12-volt or 24-volt system (for models 28" and larger). This safe voltage operation ensures you can enjoy your entertainment with complete peace of mind when using electrical devices in the bathroom.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Hear It to Believe It: Exceptional Audio Quality',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          width: 700,
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/oceatv/resources/home/ocea-style-bath-wall-tv-mirror.mp4',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'The Ocea Style smart bathroom TV features excellent, high-quality speakers built into the back of the TV. These speakers provide a fantastic audio experience, ensuring that you can fully enjoy your favorite shows, movies, and music while in your bathroom.',
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
                            width: 350,
                            imageUrl:
                                'https://www.evervue.com/evervue/assets/perfect-bathroom-tv.jpg',
                          )),
                      Container(
                          width: 700,
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/oceatv/resources/home/smart-television-ocea-style-for-shower-room.mp4',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            const Text(
                              'Mirror Feeds: Stay Informed with OCEA Style',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Mirror Feeds is a free smart application exclusive to OCEA Style, designed to keep you informed and connected. Effortlessly navigate through the business world, stay updated on the latest entertainment trends, explore new health and science discoveries, and keep up with the most recent advancements in technology.\n\nWith Mirror Feeds, you can also monitor stocks and currencies, check the weather in your current location, and customize the layout of your feeds to suit your preferences.',
                            ),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: _launchURL,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 30.0),
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF7d3f78),
                                      Color(0xFF009ebf)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    transform:
                                        GradientRotation(160 * 3.1416 / 180),
                                  ),
                                ),
                                child: const Text(
                                  'Go to MirrorFeeds',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Easy to Set Up:\nOcea Style in 3 Simple Steps',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Setting up your Ocea Style smart bathroom TV is a breeze. Follow these three simple steps to get started:',
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/oceatv/resources/home/ocea-style-tv-wall-mount-bathroom.mp4',
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
                                'https://www.evervue.com/evervue/assets/smart-bathroom-tv-second-step-for-ocea-style.jpg',
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
                                'https://www.evervue.com/evervue/assets/third-step-for-ocea-style-outdoor-tv.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            const Text(
                              'Your Ocea Style is now Ready!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 30),
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
                                  'https://www.evervue.com/evervue/assets/ocea-style-logo.png',
                              width: screenWidth,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'In just a few minutes, your Ocea Style will be ready to deliver an exceptional entertainment experience in your bathroom.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Style TV Size: The Perfect Fit for Your Bathroom',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                                'https://www.evervue.com/evervue/assets/ocea-style-made-to-measure-bathroom-tv.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Select the ideal size Ocea Style smart bathroom TV to suit your preferences and space requirements. Rest assured, all sizes come equipped with the same exceptional features and functionality.\n\nFor an enhanced viewing experience, Ocea Style sizes 28" and up boast stunning 4K resolution picture quality.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Style Bathroom TV Explained',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/oceatv/resources/home/luxury-bathroom-tv-flat-screen-wall.mp4',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'What\ns in the Box?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30, bottom: 30),
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
                                'https://www.evervue.com/evervue/assets/4k-ultra-luxury-bathroom-tv.jpg',
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SpecsViewer(
                                        pdfTitle: 'Mirror Specifications (PDF)',
                                        pdfSpecs:
                                            'assets/specification/ocea-style-specification-table.pdf',
                                      )),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            margin: const EdgeInsets.only(top: 20),
                            width: screenWidth,
                            color: const Color.fromARGB(255, 168, 0, 0),
                            child: const Text(
                              'View Mirror Specifications',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ],
                  )),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
