// ignore_for_file: deprecated_member_use
import 'package:cached_network_image/cached_network_image.dart';

import 'package:evervue/templates/image_select.dart';
import 'package:evervue/templates/dotted_template.dart';
import 'package:evervue/templates/image_slider.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../templates/video_player.dart';

class QaioMirrorPage extends StatefulWidget {
  final Function(int) onOptionSelected;
  const QaioMirrorPage({super.key, required this.onOptionSelected});

  @override
  State<QaioMirrorPage> createState() => _QaioMirrorPageState();
}

class _QaioMirrorPageState extends State<QaioMirrorPage> {
  final List<Map<String, String>> qaioProducts = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/double-sink-smart-mirror-illustration.jpg',
      'title': 'QAIO Single Sink Mirror',
      'storelink': 'https://evervuestore.com/product/qaio-single-sink-mirror/'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/single-sink-bathroom-smart-mirror.jpg',
      'title': 'QAIO Double Sink Mirror',
      'storelink': 'https://evervuestore.com/product/qaio-double-sink-mirror/'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/bathroom-qaio-trifold-smart-tv.jpg',
      'title': 'QAIO Trifold Mirror',
      'storelink': 'https://evervuestore.com/product/qaio-trifold-mirror/'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/cabinet-custom-smart-mirror-tv.jpg',
      'title': 'QAIO Cabinet Mirror',
      'storelink': ''
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/oval-smart-mirror-single-sink.jpg',
      'title': 'QAIO Oval Mirror',
      'storelink': 'https://evervuestore.com/product/qaio-oval-mirror/'
    },
    {
      'image':
          'assets/qaio/resources/home/mirror/custom-smart-tv-mirror-drawing.mp4',
      'title': 'QAIO Custom Mirror',
      'storelink': ''
    },
  ];

  final List<Map<String, String>> qaioAll = [
    {
      'title': 'Built-in Full HD Camera',
      'description':
          'Experience the ultimate in smart mirror technology with QAIO. Our cutting-edge design includes a hidden, built-in Full HD camera to bring you even more convenience and connectivity. The discreet camera placement ensures that your bathroom maintains its sleek, modern appearance.\n\nWe understand the importance of privacy, which is why the camera can be easily unplugged if desired. With QAIO, you can enjoy the benefits of advanced technology while maintaining full control over your personal space.',
      'icon': 'https://www.evervue.com/evervue/assets/hd-camera-icon.png',
    },
    {
      'title': 'Easy Installation in 30 Minutes:\nQuick and Effortless Setup',
      'description':
          'Setting up your QAIO smart mirror is incredibly easy and takes just 30 minutes! Follow these straightforward steps to enjoy your new bathroom companion.',
      'icon': 'https://www.evervue.com/evervue/assets/tools-setup-icon.png',
    },
    {
      'title':
          'Fully Customizable to Any Size and Shape: Personalize Your QAIO Experience',
      'description':
          'QAIO is committed to meeting your unique needs and preferences, offering not only standard sizes but also full customization options. This allows you to create a smart mirror in virtually any shape and size to perfectly complement your bathroom\'s aesthetic.\n\nWhether you\'re looking for a classic rectangular design or something more creative, QAIO has the flexibility to accommodate your vision. Bring your dream bathroom to life with a personalized smart mirror that enhances both the style and functionality of your space.',
      'icon': 'https://www.evervue.com/evervue/assets/customizing-icon.png',
    },
    {
      'title': 'Alexa Voice Control: The Future of Smart Mirrors with QAIO',
      'description':
          'Experience the power of voice control in your bathroom with QAIO\'s built-in Alexa integration. Simply ask questions, and the answers will appear directly on your smart mirror. With Alexa at your command, QAIO is equipped to handle your needs today and adapt to the advancements of tomorrow.\n\nFrom checking the weather to setting reminders, managing your schedule, or controlling your smart devices, QAIO\'s Alexa integration makes your daily routine easier and more efficient. Embrace the future of bathroom technology with QAIO, the smart mirror that combines convenience, style, and innovation, all with the power of your voice.',
      'icon':
          'https://www.evervue.com/evervue/assets/alexa-voice-assistant-icon.png',
    },
    {
      'title': 'Night Light: Guiding Your Way in the Dark',
      'description':
          'With QAIO\'s thoughtful night light feature, navigating your bathroom in the middle of the night has never been easier. The built-in night light automatically turns on as you enter, providing a gentle illumination that guides your path without disrupting your sleep cycle.\n\nNo more fumbling for light switches or stumbling in the dark — QAIO ensures your safety and comfort, even during those late-night visits. Drift off to sleep with the peace of mind that QAIO is there to light your way when needed.',
      'icon': 'https://www.evervue.com/evervue/assets/light-display-icon.png',
    },
    {
      'title': 'QAIO True Light: Perfect Lighting for Every Situation',
      'description':
          'Imagine a world where you can experience flawless lighting in any environment — QAIO True Light makes it a reality! Our smart mirror features vertical light strips that simulate various lighting conditions to provide you with the ultimate versatility.',
      'icon': 'https://www.evervue.com/evervue/assets/light-bulb-icon.png',
    },
    {
      'title':
          'Wireless Keyboard: Unleash the Full Potential of Your QAIO Smart Mirror',
      'description':
          'To maximize your experience with QAIO\'s Smart TV applications, the mirror comes with a wireless keyboard. This user-friendly accessory enables you to fully engage with your smart mirror\'s features, making it easy to browse, search, and input information.',
      'icon': 'https://www.evervue.com/evervue/assets/keyboard-icon.png',
    },
  ];

  final List<Map<String, String>> qaioNext = [
    {
      'title': 'Built-in Microphone: Ensuring Compatibility and Privacy',
      'description':
          'As the demand for apps requiring a microphone increases, QAIO remains ahead of the curve with its built-in microphone feature. This ensures compatibility with a wide range of applications, providing you with a seamless and interactive smart mirror experience.\n\nAt QAIO, we prioritize your privacy, which is why we\'ve made it possible for you to unplug the microphone whenever you wish.',
      'icon': 'https://www.evervue.com/evervue/assets/microphone-icon.png',
    },
    {
      'title': 'Choose Your Ideal TV Size: 12.1" up to 98"',
      'description':
          'QAIO is designed to cater to your unique preferences and is available in a wide range of configurations and TV sizes. With options between 12.1″ and 98″, you can find the perfect fit for your customized mirror.\n\nWhether you prefer a compact display for quick updates or a large screen for an immersive viewing experience, QAIO has you covered. Tailor your smart mirror to your specific needs and enjoy the unparalleled convenience and style that QAIO has to offer.',
      'icon': 'https://www.evervue.com/evervue/assets/tv-size-icon.png',
    },
    {
      'title':
          'TV Completely Vanishes When Turned Off: Experience the Magic of QAIO',
      'description':
          'TV Completely Vanishes When Turned Off: Experience the Magic of QAIO\n\nOne of the most striking features of QAIO is its ability to make the TV disappear when turned off. It\'s like magic! When not in use, the TV seamlessly blends into the mirror, maintaining your bathroom\'s sleek and modern appearance.\n\nThis innovative design ensures that your smart mirror remains a stylish, unobtrusive addition to your bathroom, while still offering you the convenience and entertainment options of a built-in TV.',
      'icon':
          'https://www.evervue.com/evervue/assets/vanishing-mirror-icon.png',
    },
    {
      'title':
          'Completely Powered by Safe 24 Volt: Safety and Versatility in One Package',
      'description':
          'QAIO smart mirror prioritizes your safety, operating on a low voltage 24V DC power supply that is safe to use anywhere in the bathroom. There\'s no need to worry about electrical hazards or compatibility issues, as QAIO is designed to work seamlessly in any bathroom environment.\n\nAdditionally, QAIO comes with a worldwide universal power supply, ensuring that it can be easily installed and used in any location across the globe.',
      'icon': 'https://www.evervue.com/evervue/assets/volt-energy-icon.png',
    },
    {
      'title':
          'ON/OFF and Volume Touch Buttons: Discreet and Accessible Controls',
      'description':
          'QAIO smart mirror features three easy-to-reach touch buttons for ON/OFF and volume control, cleverly hidden behind the mirror. These discreet controls ensure that your smart mirror maintains a sleek, modern appearance without sacrificing accessibility.',
      'icon': 'https://www.evervue.com/evervue/assets/power-button-icon.png',
    },
    {
      'title': 'Touchscreen: Enhanced Control and Convenience with QAIO',
      'description':
          'QAIO takes convenience to new heights by offering a standard touchscreen on the main TV. This intuitive feature allows you to control applications much faster and more efficiently than a regular remote control.\n\nEasily navigate through your favorite apps, adjust settings, and access a wealth of information with just a touch of your finger. The seamless integration of touchscreen technology with your smart mirror ensures a user-friendly experience that enhances your daily routine.',
      'icon': 'https://www.evervue.com/evervue/assets/touchscreen-icon.png',
    },
    {
      'title': 'Extra 12.1" Panel: Customize Your Information Hub with QAIO',
      'description':
          'QAIO goes above and beyond with its standard additional 12.1" panel located at the top of the mirror. This versatile display can show a variety of useful information, such as local weather, stock updates, transit times to work, reminders, the latest news, or even a traditional analog clock.\n\nThe best part? You can configure this extra panel to suit your preferences and needs, creating a personalized information hub that keeps you updated and informed throughout the day.',
      'icon': 'https://www.evervue.com/evervue/assets/panel-icon.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool ifScreen = screenWidth > 700;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ImageCarousel(imagePaths: [
                'https://www.evervue.com/evervue/assets/single-sink-smart-mirror-tv.jpg',
                'https://www.evervue.com/evervue/assets/bathroom-double-sink-smart-mirror.jpg',
                'https://www.evervue.com/evervue/assets/illuminated-trifold-smart-mirror-tv-display.jpg',
                'https://www.evervue.com/evervue/assets/cabinet-mirror-tv-bathroom-display.jpg',
                'https://www.evervue.com/evervue/assets/lighted-oval-smart-mirror-tv-view.jpg'
              ]),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'The Smart Mirror Revolutionizing Your Morning Routine',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Discover a world of possibilities with QAIO, the ultimate smart mirror that transforms your bathroom into a personalized, high-tech oasis. Seamlessly connect all your smart devices, stay up-to-date with the latest news, monitor your stocks, read the morning newspaper, or even watch movies — all from the comfort of your bathroom!\n\n'
                        'QAIO takes convenience and innovation to the next level by integrating Alexa into each mirror, allowing you to ask questions and receive quick, accurate answers. Plus, with its customizable lighting options, you can achieve the perfect ambiance for any task, from applying makeup to winding down with a relaxing bath.',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'QAIO Products',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: qaioProducts.asMap().entries.map((entry) {
                        int index = entry.key;
                        var product = entry.value;

                        return Stack(
                          children: [
                            Container(
                              constraints: BoxConstraints(
                                  maxWidth: ifScreen ? 300 : 350),
                              child: index == qaioProducts.length - 1
                                  ? VideoPlayerWidget(
                                      source: product['image']!,
                                    )
                                  : CachedNetworkImage(
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
                                      imageUrl: product['image']!),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 1),
                                constraints: BoxConstraints(
                                    maxWidth: ifScreen ? 300 : 350),
                                color: const Color(0xff333333),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 7, horizontal: 10),
                                      child: Text(
                                        product['title']!,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Century Gothic'),
                                      ),
                                    ),
                                    if (product['storelink'] != null &&
                                        product['storelink']!.isNotEmpty)
                                      InkWell(
                                        onTap: () {
                                          launch(product['storelink']!);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6, horizontal: 13),
                                          color: Colors.white,
                                          child: const Text(
                                            'Buy',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Century Gothic'),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'Alexa Takes Over Your Bathroom with QAIO: The Ultimate Smart Mirror',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        constraints: const BoxConstraints(maxWidth: 500),
                        margin: const EdgeInsets.only(top: 30),
                        child: const VideoPlayerWidget(
                          source:
                              'assets/qaio/resources/home/mirror/alexa-voice-assistant-smart-mirror.mp4',
                        )),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'QAIO: Unleashing the Full Potential of Your Smart Devices',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Experience the future of bathroom technology with QAIO, the smart mirror that lets you connect and interact with your devices like never before. Say goodbye to the need for a smartphone in the bathroom and enjoy seamless integration with your toothbrush, shaver, scale, and more!\n\n'
                        'With QAIO, all your device data is conveniently displayed on the mirror, allowing you to track your progress, set goals, and monitor your health and wellness journey with ease. The intuitive interface ensures that managing your smart devices is a breeze, making QAIO the perfect addition to any modern bathroom.\n\n'
                        'The images and applications shown here are solely for the purpose of demonstrating QAIO\'s compatibility with various devices and accessories. The content, devices, and accessories required to deliver this content are supplied by external providers and third parties.',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'Smart Watch',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const QaioImageSelector(smartWatch: [
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/smart-mirror-health-app-monitor.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/smart-watch-icon.jpg',
                      },
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/face-features-digital-display-tv-mirror.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/shaver-option-icon.jpg',
                      },
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/smart-mirror-tv-digital-teeth-health.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/toothbrush-option-icon.jpg',
                      },
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/face-hydration-monitor-smart-tv.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/facial-hydration-icon.jpg',
                      },
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/smart-weight-scale-bathroom-mirror-tv.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/smart-weighing-scale-icon.jpg',
                      },
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/smart-mirror-health-app-monitor.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/blood-pressure-monitor-icon.jpg',
                      },
                    ]),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'The Family-Friendly Smart Mirror for All Ages',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const QaioImageSelector(smartWatch: [
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/mirror-home-security-system-smart-tv.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/ring-home-security-icon.jpg',
                      },
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/smart-mirror-tv-video-display.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/netflix-icon.jpg',
                      },
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/toothbrush-app-feature-qaio-mirror-tv.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/teeth-brushing-icon.jpg',
                      },
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/stocks-news-display-bathroom-smart-mirror.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/digital-stock-market-icon.jpg',
                      },
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/digital-mirror-touchscreen-control-features.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/digital-control-icon.jpg',
                      },
                      {
                        'largeImage':
                            'https://www.evervue.com/evervue/assets/news-display-lighted-mirror-tv.jpg',
                        'selection':
                            'https://www.evervue.com/evervue/assets/live-tv-icon.jpg',
                      },
                    ]),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'QAIO True Light: Perfect Lighting for Every Situation',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Imagine a world where you can experience flawless lighting in any environment — QAIO True Light makes it a reality! Our smart mirror features vertical light strips that simulate various lighting conditions to provide you with the ultimate versatility.\n\n'
                        'From the warm glow of sunlight to the cool brightness of office lights, from cozy living room ambiance to the gentle flicker of candlelight, QAIO True Light covers the full spectrum between 2700K and 6300K. This allows you to effortlessly set the perfect light tone for any situation, ensuring your makeup looks impeccable in any setting.',
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 700),
                      padding: const EdgeInsets.only(top: 20),
                      child: const VideoPlayerWidget(
                          source:
                              'assets/qaio/resources/home/mirror/true-light-remote-control-smart-tv.mp4'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'Touchless Light On-Off: A Seamless, Hygienic Solution for Your Mornings',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Experience effortless convenience with QAIO\'s touchless light on-off feature. Simply move your hand below the smart mirror, and the True Light LED will turn on and off without any physical contact. This innovative, hygienic solution is perfect for those busy mornings when you need a quick and easy start.',
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 700),
                      padding: const EdgeInsets.only(top: 20),
                      child: const VideoPlayerWidget(
                          source:
                              'assets/qaio/resources/home/mirror/smart-mirror-technology-touchless-light-sensor.mp4'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'Night Light: Guiding Your Way in the Dark',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'With QAIO\'s thoughtful night light feature, navigating your bathroom in the middle of the night has never been easier. The built-in night light automatically turns on as you enter, providing a gentle illumination that guides your path without disrupting your sleep cycle.\n\n'
                        'No more fumbling for light switches or stumbling in the dark — QAIO ensures your safety and comfort, even during those late-night visits. Drift off to sleep with the peace of mind that QAIO is there to light your way when needed.',
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 700),
                      padding: const EdgeInsets.only(top: 20),
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
                              'https://www.evervue.com/evervue/assets/night-light-smart-mirror-technology.jpg'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'Easy Installation: Hassle-Free Setup for Your QAIO Smart Mirror',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Installing your QAIO smart mirror is a breeze, usually taking just 30-40 minutes of your time. Follow these simple steps to effortlessly transform your bathroom:',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        '1. Mount the wall mount strips securely to the wall.\n'
                        '2. Connect the QAIO smart mirror to a power source.\n'
                        '3. Hang the QAIO on the wall mount strips.',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'That\'s it! In just a few quick steps, you\'ll have your QAIO smart mirror up and running, ready to revolutionize your daily routine.',
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 700),
                      padding: const EdgeInsets.only(top: 20),
                      child: const VideoPlayerWidget(
                          source:
                              'assets/qaio/resources/home/mirror/qaio-smarter-mirror-installation-guide.mp4'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'QAIO has it all',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    QaioDottedTemplate1(content: qaioAll),
                    QaioDottedTemplate2(content: qaioNext),
                  ],
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 400,
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
                          'https://www.evervue.com/evervue/assets/hospitality-smart-mirror-tv.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(40),
                        constraints: const BoxConstraints(maxWidth: 435),
                        width: screenWidth - 40,
                        height: 360,
                        color: const Color.fromARGB(178, 255, 255, 255),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'Hospitality',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 26),
                            ),
                            const Text(
                              'With QAIO, your hotel will be ready for the upcoming decades with sophisticated features that will impress your guests. QAIO is compatible with ProCentric and Proldiom, so integration with your existing system has never been easier.',
                            ),
                            InkWell(
                              onTap: () {
                                widget.onOptionSelected(4);
                              },
                              child: Container(
                                color: const Color(0xff3b9ec7),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: const Text(
                                  'Learn More',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SpecsViewer(
                                pdfTitle: 'Mirror Specifications (PDF)',
                                pdfSpecs:
                                    'assets/specification/qaio-mirror-specification-table.pdf',
                              )),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                    width: screenWidth,
                    color: const Color(0xff3b9ec7),
                    child: const Text(
                      'View Mirror Specifications',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
