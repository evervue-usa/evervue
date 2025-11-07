import 'package:evervue/templates/image_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/ocea/ocea_pdf_viewer.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OceaTechnologyPage extends StatefulWidget {
  const OceaTechnologyPage({super.key});

  @override
  State<OceaTechnologyPage> createState() => _OceaTechnologyPageState();
}
  

class _OceaTechnologyPageState extends State<OceaTechnologyPage> {
  int selectedThirdSectionIndex = 0;
  int selectedSectionIndex = 0;

  void _launchURL(String url) async {
  final Uri uri = Uri.parse(url);  // Convert String to Uri
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}


  final List<Map<String, String>> thirdSectionMediaContent = [
    {
      'mediaFile': 'https://www.evervue.com/evervue/assets/bathroom-tv-lg.jpg',
      'thumbnail': 'https://www.evervue.com/evervue/assets/bathroom-tv.jpg',
    },
    {
      'mediaFile':
          'https://www.evervue.com/evervue/assets/samsung-bathroom-tv.jpg',
      'thumbnail':
          'https://www.evervue.com/evervue/assets/bathroom-tv-philips.jpg',
    },
    {
      'mediaFile': 'assets/oceatv/resources/technology/bathroom-tv-fan.mp4',
      'thumbnail':
          'https://www.evervue.com/evervue/assets/bathroom-tv-samsung.jpg',
    },
  ];

  final List<Map<String, String>> sectionMediaContent = [
    {
      'mediaFile': 'assets/oceatv/resources/technology/external-speaker.mp4',
      'thumbnail': 'https://www.evervue.com/evervue/assets/Speakers.jpg',
    },
    {
      'mediaFile':
          'https://www.evervue.com/evervue/assets/panasonic-bathroom-tv-speaker.jpg',
      'thumbnail': 'https://www.evervue.com/evervue/assets/SW80.jpg',
    },
    {
      'mediaFile':
          'https://www.evervue.com/evervue/assets/bathroom-speakers.jpg',
      'thumbnail': 'https://www.evervue.com/evervue/assets/SW50.jpg',
    },
    {
      'mediaFile': 'https://www.evervue.com/evervue/assets/bathroom-audio.jpg',
      'thumbnail':
          'https://www.evervue.com/evervue/assets/External-Speakers.jpg',
    },
  ];

  final List<Map<String, String>> compTable = [
    {
      'description1':
          'Yes, it is water resistant. When recessed mounted, Ocea has an (up to, depending in installation method) IPX7 water-resistant rating.',
      'image': 'https://www.evervue.com/evervue/assets/a1.jpg',
      'description2':
          'Water resistance is sometimes present, but with integrated speakers in the TV, it is usually IPX5 or less.'
    },
    {
      'description1':
          'Yes, strengthened mirror glass. Our glass is extremely strong, scratch-proof, and easy to clean.',
      'image': 'https://www.evervue.com/evervue/assets/a2-1.jpg',
      'description2':
          'Frequently with an acrylic or plastic front that scratches easily.'
    },
    {
      'description1':
          'Our patented magnet wall box system reduces the bezel, which improves the overall appearance of the TV.',
      'image': 'https://www.evervue.com/evervue/assets/a3-1.jpg',
      'description2':
          'Bezels that are large enough to cover the wall box construction.'
    },
    {
      'description1':
          'The patented heat sink removes heat from the TV. This significantly reduces the temperature inside the TV and extends its life.',
      'image': 'https://www.evervue.com/evervue/assets/innovative-tv.jpg',
      'description2': 'No.'
    },
    {
      'description1':
          "Ocea Pro has a separate speaker housing, which protects the electronic components from audio vibrations.",
      'image': 'https://www.evervue.com/evervue/assets/a5.jpg',
      'description2':
          'The speakers are integrated recess in the closed TV compartment and are not separated, exposing the electronic parts to vibrations.'
    },
    {
      'description1':
          'The internal fan of the Ocea Pro circulates the air inside, resulting in quick and even defogging.',
      'image': 'https://www.evervue.com/evervue/assets/a6-1.jpg',
      'description2':
          'There is no internal fan. There is also no option to defog the screen. TVs are sometimes powered by 110 or 220 volts, which can be hazardous in the bathroom.'
    },
    {
      'description1':
          'Ocea pro is powered by a 12 or 24 volt battery. As a result, it is the only bathroom on the market that is suitable for use in the bathroom.',
      'image': 'https://www.evervue.com/evervue/assets/a7.jpg',
      'description2':
          'Sometimes TV is powered by 110 or 220 volt, which can be dangerous in the bathroom.'
    },
    {
      'description1':
          'Ocea Pro comes in both recessed and surface mount options. OCEA Pro MUST be recessed mounted for sauna use.',
      'image': 'https://www.evervue.com/evervue/assets/a8.jpg',
      'description2': 'No, usually only recessed or surface mount.'
    },
    {
      'description1':
          'Yes, the Ocea Pro includes a full touchscreen as standard. You can control your television up to 50 times faster.',
      'image': 'https://www.evervue.com/evervue/assets/a9.jpg',
      'description2': 'No.'
    },
    {
      'description1':
          'Yes, you can communicate with Ocea Pro if you have Google Assistant installed.',
      'image': 'https://www.evervue.com/evervue/assets/voice-waterproof-tv.jpg',
      'description2': 'No.'
    },
    {
      'description1':
          'Yes, you can play your favorite music from your phone by connecting it to OCEA Pro via Bluetooth.',
      'image': 'https://www.evervue.com/evervue/assets/a11.jpg',
      'description2': 'No.'
    },
    {
      'description1':
          'Ocea Pro has an easily accessible on/off and volume button on the front.',
      'image': 'https://www.evervue.com/evervue/assets/a12.jpg',
      'description2': 'No.'
    },
    {
      'description1':
          "Ocea Pro is powered by the most recent version of Android. You can easily upgrade the set top box compartment after a few years.",
      'image': 'https://www.evervue.com/evervue/assets/a13.jpg',
      'description2':
          "No, it is occasionally an HDMI dongle that does not support 4K. The built-in Smart TV cannot be upgraded. Inquire with the vendor."
    },
    {
      'description1':
          'Yes. Ocea Pro is used in many hotels around the world and has extensive experience with hotel IPTV integration.',
      'image': 'https://www.evervue.com/evervue/assets/iptv-bathroom.jpg',
      'description2': 'Ask vendor.'
    },
    {
      'description1':
          'Yes, excellent 4K HD picture quality on Ocea Pro 280 and larger models.',
      'image': 'https://www.evervue.com/evervue/assets/a15.jpg',
      'description2': 'No, and the Smart TV applications are difficult to use.'
    },
    {
      'description1': 'Ocea Pro comes in sizes ranging from 18" to 75".',
      'image': 'https://www.evervue.com/evervue/assets/a16.jpg',
      'description2': 'There are usually only a few sizes up to 32".'
    },
    {
      'description1':
          'There are numerous mounting options available. Drill-free brackets, Swivel brackets, and Lift brackets are available.',
      'image': 'https://www.evervue.com/evervue/assets/a17.jpg',
      'description2': 'There are very few mounting options.'
    },
    {
      'description1':
          'Yes, Ocea Pro can be installed on an automated lift bracket if desired.',
      'image': 'https://www.evervue.com/evervue/assets/a18-1.jpg',
      'description2': 'No.'
    },
  ];

  void _onThirdSectionMediaTap(int index) {
    setState(() {
      selectedThirdSectionIndex = index;
    });
  }

  void _onSectionMediaTap(int index) {
    setState(() {
      selectedSectionIndex = index;
    });
  }

  Widget buildMediaSection({
    required List<Map<String, String>> mediaContent,
    required int selectedIndex,
    required Function(int) onTap,
  }) {
    final selectedMediaFile = mediaContent[selectedIndex]['mediaFile']!;
    bool isVideo = selectedMediaFile.endsWith('.mp4');

    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: isVideo
                ? VideoPlayerWidget(
                    key: ValueKey(selectedMediaFile),
                    source: selectedMediaFile,
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
                    imageUrl: selectedMediaFile,
                    key: ValueKey(selectedMediaFile),
                    fit: BoxFit.cover,
                  ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(mediaContent.length, (index) {
              return Flexible(
                child: GestureDetector(
                  onTap: () {
                    onTap(index);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: selectedIndex == index
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
                      imageUrl: mediaContent[index]['thumbnail']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
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
                        'https://www.evervue.com/evervue/assets/television-that-is-waterproof.jpg',
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Pro Loves the Bathroom:\nBuilt to Last in a Wet Environment',
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
                                'https://www.evervue.com/evervue/assets/bathroom-tv-new-york.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'The Ocea Pro is designed with water resistance in mind and can achieve an IPX7 water-resistant rating, depending on the type of installation. Constructed with coated aluminum that will never rust and stainless steel bolts and nuts, the Ocea Pro is a durable and reliable addition to your bathroom that you can enjoy for years to come.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Innovative Cooling System:\nPatent Pending Technology',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: buildMediaSection(
                          mediaContent: thirdSectionMediaContent,
                          selectedIndex: selectedThirdSectionIndex,
                          onTap: _onThirdSectionMediaTap,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Pro features a smart, patent-pending cooling system that significantly reduces excess heat inside the sealed, water-resistant TV case. Every Ocea Pro is equipped with a heat sink on the back that effectively dissipates excess heat from the TV\'s interior. Additionally, the built-in fan circulates air within the TV unit, ensuring that heat from electronic components and the LED panel does not compromise the TV\'s performance.\n\nWithout an active airflow cooling system, temperatures inside a closed bathroom TV can reach up to 160°F / 70°C. In some cases, this figure may be even higher due to the smaller surface area available for heat dissipation. This is why traditional televisions have ventilation openings, while the Ocea Pro\'s housing is completely sealed to maintain its water-resistant properties. The Ocea Pro Air-Flow cooling system reduces interior temperatures to 135°F / 55°C, significantly improving the performance of the bathroom TV and prolonging its lifespan. We believe this is an essential feature for any bathroom TV.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Additional Audio Speaker Options: Tailor Your Sound Experience',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: buildMediaSection(
                          mediaContent: sectionMediaContent,
                          selectedIndex: selectedSectionIndex,
                          onTap: _onSectionMediaTap,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Pro offers a range of audio speaker options to cater to your preferences and style, ensuring you enjoy outstanding audio quality in your bathroom.\n\nChoose from the following options:',
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
                                    '1. Integrated Aluminum Sound Bar: A sleek, integrated sound bar that enhances your audio experience while maintaining a streamlined appearance.\n',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '2. External Speakers: Ideal for shower installations, these speakers can be placed where you need them for optimal audio performance.\n',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '3. Recessed Speakers: Stylish and discreet, Ocea\'s recessed speakers blend seamlessly with your bathroom decor.\n',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 0),
                        child: const Text(
                          'All speakers connect directly to the TV without the need for an external amplifier.\n\nAdditionally, Ocea Pro features a non-amplified audio output that can be connected to an external amplifier or sound system, allowing you to customize your audio experience even further.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Set Top Box Compartment: Convenience at Its Best',
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
                                'https://www.evervue.com/evervue/assets/bathroom-set-top-box.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'The Ocea Pro\'s integrated set top box compartment makes it easy for you to install your favorite TV systems, such as Android TV, Apple TV, and Amazon Fire TV. If you decide to upgrade your Ocea Pro after a few years, simply swap out the TV box. Ocea Pro features two or three HDMI inputs, along with the convenient CEC function that turns on the TV when you turn on the set-top box (available on 4K models only).',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Fog-Free Viewing with Ocea',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30, bottom: 10),
                          child: const VideoPlayerWidget(
                            source:
                                'assets/oceatv/resources/technology/fog-free-bathroom-tv.mp4',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'The Ocea Pro is designed with a fog-free feature that delivers a crisp, clear image when the TV is turned on. Its unique active airflow system circulates air, allowing the screen to become fog-free quickly and evenly. Enjoy an uninterrupted viewing experience in your bathroom, shower, or sauna with Ocea Pro\'s innovative fog-free technology.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Enhanced Brightness for Optimal Viewing',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
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
                                'https://www.evervue.com/evervue/assets/extra-bright-bathroom-tv.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Ocea Pro features a mirror front, and to guarantee exceptional picture quality, it is equipped with an enhanced brightness LED panel. This essential feature ensures an enjoyable viewing experience in well-lit bathrooms or other bright environments. Enjoy superior image quality and clarity with Ocea Pro\'s advanced brightness capabilities.',
                        ),
                      ),
                      Container(
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
                                'https://www.evervue.com/evervue/assets/perfect-bathroom-tv.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Update on Mirror Feeds',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const ImageCarousel(
                          imagePaths: [
                            'https://www.evervue.com/evervue/assets/braun-smart-mirror.jpg',
                            'https://www.evervue.com/evervue/assets/news-stocks-smart-mirror.jpg',
                            'https://www.evervue.com/evervue/assets/qaio-ocea.jpg',
                            'https://www.evervue.com/evervue/assets/smart-infomation-bathroom-tv.jpg',
                            'https://www.evervue.com/evervue/assets/free-app-bathroom.jpg',
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            const Text(
                              'Mirror Feeds V5.1.3 is the latest version of the free intelligent app for your smart mirror. This innovative app allows you to navigate through various topics such as business, entertainment, health, science, technology, and more. Stay updated on the latest trends and news, track stocks and currencies, and check the weather in your current location.\n\nWith Mirror Feeds V5.1.3, you can now customize the layout of your feeds, ensuring that the information you want is easily accessible and displayed in a way that suits your preferences. This new feature provides even greater convenience and flexibility to enhance your overall user experience.',
                            ),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {},
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
                                child: ElevatedButton(
                                  onPressed: (){
                                    _launchURL('https://www.mirrorfeeds.com/');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    elevation: 0,
                                    ),
                                  child: const Text(
                                  'Visit Website',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    
                                  ),
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
                          'Effortless Cleaning of Ocea Pro',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
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
                                'https://www.evervue.com/evervue/assets/smart-mirror-sony.jpg',
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Cleaning your Ocea Pro bathroom TV is a breeze thanks to its high-quality, durable materials. You can use regular detergents to clean the screen and the rest of the unit without the fear of scratching it. Ocea Pro\'s water-resistant design ensures that you can clean the TV thoroughly without worrying about damaging its internal components.\n\nWith Ocea Pro, maintaining a clean and hygienic bathroom TV has never been easier. Enjoy peace of mind knowing that you can keep your Ocea Pro looking and performing like new with minimal effort.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'What\'s in the Box?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: CachedNetworkImage(                            placeholder: (context, url) => const Text(
                              'Loading assets...',
                              style: TextStyle(
                                color: Color.fromARGB(255, 168, 0, 0),
                                fontSize: 16,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            imageUrl:
                                'https://www.evervue.com/evervue/assets/ocea-box.jpg',
                          )),
                      Container(
                        width: screenWidth,
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text(
                          "Comparison Table",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(),
                            const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Bathroom TV OCEA Pro Smart Touch',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Other Bathroom TV',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              children: compTable.map((index) {
                                return SizedBox(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              230, 230, 230, 1)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              index['description1']!,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: screenWidth * 0.02),
                                              overflow: TextOverflow.visible,
                                            ),
                                          ),
                                          Expanded(
                                            child: Transform.scale(
                                              scale: 0.7,
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
                                                imageUrl: index['image']!,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              index['description2']!,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: screenWidth * 0.02),
                                              overflow: TextOverflow.visible,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OceaPDFViewer(
                                        pdfTitle: 'Mirror Specifications (PDF)',
                                        pdfSpecs:
                                            'assets/specification/ocea-pro-specification-table.pdf',
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
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
  
}
