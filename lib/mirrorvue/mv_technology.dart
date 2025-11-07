import 'package:evervue/mirrorvue/image_selector.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/mirrorvue/model_section.dart';
import 'package:evervue/templates/image_slider.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MirrorVueTechnology extends StatefulWidget {
  const MirrorVueTechnology({super.key});

  @override
  State<MirrorVueTechnology> createState() => _MirrorVueTechnologyState();
}

class _MirrorVueTechnologyState extends State<MirrorVueTechnology> {
  int selectedIndex = 0;

  final List<String> soundOptions = [
    'https://www.evervue.com/evervue/assets/4k-mirror-tv-speaker.jpg',
    'https://www.evervue.com/evervue/assets/mirrorvue-tv-recessed-speaker.jpg',
  ];

  final List<String> lightOptions = [
    'https://www.evervue.com/evervue/assets/led_lights/standard-cool-lights.png',
    'https://www.evervue.com/evervue/assets/led_lights/standard-warm-lights.png',
    'https://www.evervue.com/evervue/assets/led_lights/true-lights.png',
    'https://www.evervue.com/evervue/assets/led_lights/philips-warm-lights.png',
    'https://www.evervue.com/evervue/assets/led_lights/philips-natural-lights.png',
    'https://www.evervue.com/evervue/assets/led_lights/philips-cool-lights.png',
  ];

  final List<Map<String, String>> modelImagesPaths = [
    {
      'large':
          'assets/mirrorvue/resources/highlights/MirrorVue-Model-A-True-Light.mp4',
      'thumbnail': 'https://www.evervue.com/evervue/assets/model-a.jpg',
      'model': 'Model A'
    },
    {
      'large':
          'assets/mirrorvue/resources/highlights/MirrorVue-Model-B-True-Light.mp4',
      'thumbnail': 'https://www.evervue.com/evervue/assets/model-b.jpg',
      'model': 'Model B'
    },
    {
      'large':
          'assets/mirrorvue/resources/highlights/MirrorVue-Model-C-True-Light.mp4',
      'thumbnail': 'https://www.evervue.com/evervue/assets/model-c.jpg',
      'model': 'Model C'
    },
    {
      'large':
          'assets/mirrorvue/resources/highlights/MirrorVue-Model-D-True-Light.mp4',
      'thumbnail': 'https://www.evervue.com/evervue/assets/model-d.jpg',
      'model': 'Model D'
    },
    {
      'large':
          'assets/mirrorvue/resources/highlights/MirrorVue-Model-E-True-Light.mp4',
      'thumbnail': 'https://www.evervue.com/evervue/assets/model-e.jpg',
      'model': 'Model E'
    },
  ];

  final List<String> list = ["first text", "second text", "third text"];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isTablet = screenWidth >= 600;
    // bool isPhone = screenWidth < 600;

    double itemWidth =
        isTablet ? (screenWidth - 40) / 5 : (screenWidth - 40) / 2;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                width: screenWidth,
                height: screenHeight * 0.8,
                child: const VideoPlayerWidget(
                  source:
                      'assets/mirrorvue/resources/highlights/Mirrorvue-Technology-Banner-768.mp4',
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                constraints: const BoxConstraints(maxWidth: 700),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Mirror TV: Unparalleled Quality and Innovation',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'At MirrorVue, we specialize in Mirror TVs, a unique combination of high-end mirrors and television technology. Our dedication to superior quality positions us as a leader in the mirror TV industry. Our mirror TVs are more than just a television; they\'re a fusion of technology and decor, made to enhance any room.',
                        textAlign: TextAlign.center,
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
                            'https://www.evervue.com/evervue/assets/vanishing-smart-4k-tv.jpg',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Television Quality: The Mirror TV Edge',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Our Mirror TVs aren\'t just about appearances. At MirrorVue, every mirror TV boasts stunning 4K resolution for sizes 28" and larger. Experience the vibrant, crystal-clear quality of our displays, designed to elevate your content with unparalleled clarity and detail.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const Text(
                        'Discover the Mirror TV Technology Difference',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'When you choose MirrorVue, you\'re choosing a blend of advanced technology and sleek design. Our vanishing Mirror TVs are more than just a television; they\'re a statement piece that complements any room\'s aesthetics, offering both functionality and style.',
                        textAlign: TextAlign.center,
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
                            'https://www.evervue.com/evervue/assets/vanishing-mirror-bright-smart-4k-tv.jpg',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Breathtaking Audio Behind the Mirror TV: An Immersive Sound Experience',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'MirrorVue\'s mirror TVs are about visual excellence and auditory immersion. Our vanishing mirror TVs come equipped with high-quality, waterproof speakers, ensuring that the audio quality matches the stunning 4K visual experience.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const Text(
                        'Superior Sound Quality',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Our Mirror TVs are equipped with powerful speakers, providing clear and rich sound to match the visual experience. Whether it\'s a 15.6" or a 100" TV, the built-in waterproof speakers in our Mirror TVs ensure an audio experience that\'s as captivating as the display.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const Text(
                        'Complete Entertainment Experience with Mirror TV',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'MirrorVue\'s Mirror TVs offer a full entertainment experience, combining stunning visuals and captivating audio. These vanishing mirror TVs strike a perfect balance between luxury and technology, ideal for any setting.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Color(0x50000000),
                            blurRadius: 20,
                            spreadRadius: 3)
                      ]),
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
                            'https://www.evervue.com/evervue/assets/custom-mirror-the-perfect-mirror-tv-ready.jpg',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'External Speakers:\n'
                        'Ultimate Cinema Experience with Mirror TV',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Enhance your Mirror TV experience with MirrorVue\'s high-quality external speakers. Our recessed speakers, perfect for any environment, including moisture-prone areas like bathrooms, deliver a cinema-like audio experience directly from your Mirror TV.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const Text(
                        'Moisture Resistant and High-Quality Sound',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Designed with moisture resistance in mind, our SW50 & SW80 external speakers are suitable for various environments, including bathrooms and spas. These premium speakers offer excellent audio quality, ensuring that your MirrorVue delivers a complete entertainment experience that rivals any cinema.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const CustomImageSelector(
                      soundOptions: [
                        'https://www.evervue.com/evervue/assets/4k-mirror-tv-speaker.jpg',
                        'https://www.evervue.com/evervue/assets/mirrorvue-tv-recessed-speaker.jpg',
                      ],
                      thumbnailOptions: [
                        'https://www.evervue.com/evervue/assets/the-perfect-mirror-tv-thumbnail.jpg',
                        'https://www.evervue.com/evervue/assets/custom-mirror-tv-speaker-thumbnail.jpg',
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Integrated Light Options for Your Mirror TV',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Make your MirrorVue unique with our variety of lighting options, perfect for any room. These lights are made just for mirror TVs, adding beauty and practicality to your MirrorVue. With our advanced lighting options, your vanishing mirror TV will not only look better but also work better in your bathroom.\n',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Personalize your MirrorVue with our lighting options. Enhance your mirror TV with various integrated lights, from subtle backlighting to bright LEDs, customize your mirror TV to fit the unique feel of your room.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ModelSection(modelImages: modelImagesPaths),
                    const SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: lightOptions.map((imagePath) {
                        return SizedBox(
                          width: itemWidth,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
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
                                imageUrl: imagePath),
                          ),
                        );
                      }).toList(),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Safety 12-24V: Worldwide Compatibility',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'MirrorVue is powered by a safe 12 or 24-volt system and includes its own universal power supply, making it compatible for use in any region around the world (AC plug varies per region). This ensures that you can easily install and enjoy your MirrorVue in any location while maintaining the utmost safety.',
                        textAlign: TextAlign.center,
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
                            'https://www.evervue.com/evervue/assets/smart-mirror-tv-12-volts.jpg',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Connect Any Device: Seamless Integration',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'MirrorVue offers effortless connectivity, allowing you to connect a wide range of devices with ease. Our mirror TVs are equipped with up-to-date port options, including HDMI, USB, Audio-out, 12V power input, and 24V power input. Upon request, we can also include RS232 for even greater versatility. Connect your favourite devices, such as Apple TV or an Android Box, to enjoy all your favourite shows on your MirrorVue.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
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
                            'https://www.evervue.com/evervue/assets/hdmi-usb-evervue.jpg',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
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
                            'https://www.evervue.com/evervue/assets/smart-mirror-tv-ports-hdmi.jpg',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Set Top Box Compatible: Easy Upgrades',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'With MirrorVue\'s integrated set top box compartment, you can conveniently store and connect devices like Android TV, Apple TV, or other set top boxes. This feature allows you to easily upgrade your system in the future, ensuring that your MirrorVue remains up-to-date and as good as new.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color(0x70000000),
                              blurRadius: 20,
                              spreadRadius: 3)
                        ]),
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
                              'https://www.evervue.com/evervue/assets/set-top-box-stb-evervue-television.jpg',
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Zepp & Aqua Remote:\nEnhanced Control and Convenience',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Zepp Remote: Superior Accessibility',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'The Zepp remote offers even greater accessibility, featuring a built-in keyboard for easy navigation and enhanced control. This intuitive remote ensures that you can effortlessly interact with your MirrorVue and access all your favorite content with ease.\n',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Elevate your MirrorVue experience with the perfect blend of luxury, technology, and accessibility, all at your fingertips.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const CustomImageSelector(
                      soundOptions: [
                        'https://www.evervue.com/evervue/assets/smart-tv-zepp-remote-pro.png',
                        'https://www.evervue.com/evervue/assets/smart-mirror-waterproof-remote-aqua.jpg',
                      ],
                      thumbnailOptions: [
                        'https://www.evervue.com/evervue/assets/zepp-remote-pro-thumb.png',
                        'https://www.evervue.com/evervue/assets/universal-waterproof-remote-tv.jpg',
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Active Ventilation: Optimal Performance for Your Mirror TV',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Our Mirror TVs come with an active ventilation system to maintain optimal performance, ensuring your vanishing mirror TV always operates at its best. By effectively managing internal temperatures, our Mirror TVs stay ahead in functionality and reliability, making them a smart choice for anyone seeking a blend of luxury, technology, and enduring performance in their home entertainment setup.',
                        textAlign: TextAlign.center,
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
                              'https://www.evervue.com/evervue/assets/4k-mirror-tv-fan-cooling.jpg',
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Built-In Defogger for a Clear Mirror TV View',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Upgrade your MirrorVue mirror TV with the option to add a built-in defogger, ensuring that your mirror remains clear and fog-free even after a hot shower. No more wiping the mirror to maintain a clean and clear view. We offer defoggers in various shapes and sizes to suit your specific needs.',
                        textAlign: TextAlign.center,
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
                              'https://www.evervue.com/evervue/assets/mirror-tv-fog-free-technology.jpg',
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Effortless Control of Your Mirror TV',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Controlling your MirrorVue Mirror TV has never been more convenient. Choose from a range of control options, including voice control, high-quality touchscreen, and the efficient Zepp remote. These advanced features provide a seamless and user-friendly experience, allowing you to enjoy your MirrorVue to the fullest.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const CustomImageSelector(
                      soundOptions: [
                        'https://www.evervue.com/evervue/assets/touch-screen-tv-mirror.jpg',
                        'https://www.evervue.com/evervue/assets/control-touchscreen-mirror-tv.jpg',
                        'https://www.evervue.com/evervue/assets/smart-tv-zepp-remote-pro.png',
                      ],
                      thumbnailOptions: [
                        'https://www.evervue.com/evervue/assets/touchscreen-mirror-tv-mirrorvue.jpg',
                        'https://www.evervue.com/evervue/assets/voice-control-mirrorvue-tv.jpg',
                        'https://www.evervue.com/evervue/assets/zepp-remote-pro-thumbnail.png',
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'What\'s in the Box?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'MirrorVue provides you with everything you need for a smooth and seamless setup. When you purchase a MirrorVue, you can expect the following components to be included in the package:',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildListItem(1, 'Mirror TV',
                              'The elegantly designed vanishing mirror TV, combining style and functionality for an exceptional entertainment experience.'),
                          buildListItem(2, 'Mounts',
                              'The necessary mounts for secure and easy installation, ensuring that your MirrorVue fits perfectly in your desired location.'),
                          buildListItem(3, 'Remote',
                              'A user-friendly remote control for effortless operation and interaction with your MirrorVue.'),
                          buildListItem(4, 'Power Supply',
                              'A universal power supply, compatible with worldwide voltage standards, ensuring your MirrorVue can be used in any location.'),
                          buildListItem(
                              5,
                              'Installation Manuals (download only)',
                              'Detailed installation manuals, providing step-by-step guidance to help you set up your MirrorVue with ease.'),
                        ],
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 30),
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color(0x70000000),
                              blurRadius: 20,
                              spreadRadius: 3)
                        ]),
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
                              'https://www.evervue.com/evervue/assets/mirrorvue-mirror-tv-set-included.jpg',
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Mirror Feeds V5.1.3:\nStay Connected and Informed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 60,
                      height: 2,
                      color: const Color(0xffc99e62),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Mirror Feeds is a free smart application designed specifically for your smart mirror, keeping you updated and informed at all times. With MirrorFeeds, you can effortlessly stay connected to the world around you:',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                        height: 100,
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
                              'https://www.evervue.com/evervue/assets/mirrorfeeds-logo.png',
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildListItem(1, 'Business',
                              'Navigate the fast-paced business world with real-time updates and insights.'),
                          buildListItem(2, 'Entertainment',
                              'Discover the latest trends and news from the world of entertainment.'),
                          buildListItem(3, 'Health and Science',
                              'Stay informed about the latest breakthroughs and developments in health and science.'),
                          buildListItem(4, 'Technology',
                              'Keep up-to-date with the newest advancements in technology.'),
                          buildListItem(5, 'Stocks and Currencies',
                              'Monitor the financial markets with live updates on stocks and currencies.'),
                          buildListItem(6, 'Weather',
                              'Check local weather conditions and forecasts for your current location.'),
                          buildListItem(7, 'Customization',
                              'Personalize the layout of your feeds to suit your preferences and style.'),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => _launchUrl('www.mirrorfeeds.com/'),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        margin: const EdgeInsets.only(top: 20),
                        width: screenWidth,
                        color: const Color(0xffe5ae49),
                        child: const Text(
                          'Visit Website',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth,
                      constraints: const BoxConstraints(maxWidth: 500),
                      margin: const EdgeInsets.only(top: 30),
                      child: const ImageCarousel(
                        imagePaths: [
                          'https://www.evervue.com/evervue/assets/custom-mirror-vanish.jpg',
                          'https://www.evervue.com/evervue/assets/the-perfect-smart-mirror-tv.jpg',
                          'https://www.evervue.com/evervue/assets/touchscreen-smart-tv-stocks.jpg',
                          'https://www.evervue.com/evervue/assets/news-headline-mirror-tv.jpg',
                          'https://www.evervue.com/evervue/assets/custom-mirror-tv-evervue.jpg',
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const VideoPlayerWidget(
                          source:
                              'assets/mirrorvue/resources/technology/mirrorvue-technology-custom-smart-tv-mirror.mp4',
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SpecsViewer(
                                      pdfTitle: 'Mirror Specifications (PDF)',
                                      pdfSpecs:
                                          'assets/specification/mirrorvue-mirror-tv-specification-table.pdf',
                                    )),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          margin: const EdgeInsets.only(top: 20),
                          width: screenWidth,
                          color: const Color(0xffe5ae49),
                          child: const Text(
                            'View Mirror Specifications',
                            textAlign: TextAlign.center,
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildListItem(int number, String title, String description) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$number. ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: 'Century Gothic',
            height: 1.5,
            letterSpacing: 0.0,
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Century Gothic',
                height: 1.5,
                letterSpacing: 0.0,
              ),
              children: [
                TextSpan(
                  text: '$title: ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Century Gothic',
                    height: 1.5,
                    letterSpacing: 0.0,
                  ),
                ),
                TextSpan(
                  text: description,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Future<void> _launchUrl(String link) async {
  var url = 'https://$link';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
