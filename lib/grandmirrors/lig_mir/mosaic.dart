import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/grandmirrors_page.dart';
import 'package:evervue/grandmirrors/lig_mir/light_option.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MosaicPage extends StatefulWidget {
  const MosaicPage({super.key});

  @override
  State<MosaicPage> createState() => _MosaicPageState();
}

class Designs {
  String title;
  String code;
  String image;

  Designs({required this.title, required this.code, required this.image});
}

class _MosaicPageState extends State<MosaicPage> {
  List<Designs> designs = [
    Designs(
        title: 'ANCIENT DESERT',
        code: 'STN15',
        image:
            'https://www.evervue.com/evervue/assets/product/mosaic/ancient.jpg'),
    Designs(
        title: 'BLACK SEA',
        code: 'SEA07',
        image:
            'https://www.evervue.com/evervue/assets/product/mosaic/black.jpg'),
    Designs(
        title: 'BORACAY',
        code: 'SEA06',
        image:
            'https://www.evervue.com/evervue/assets/product/mosaic/boracay.jpg'),
    Designs(
        title: 'DESERT',
        code: 'STN16',
        image:
            'https://www.evervue.com/evervue/assets/product/mosaic/desert.jpg'),
    Designs(
        title: 'GREEK LIFE',
        code: 'STN10',
        image:
            'https://www.evervue.com/evervue/assets/product/mosaic/greek.jpg'),
    Designs(
        title: 'SIESTA',
        code: 'CLR08',
        image:
            'https://www.evervue.com/evervue/assets/product/mosaic/siesta.jpg'),
  ];

  final List<Map<String, String>> ledLightPaths = [
    {
      'image': 'https://www.evervue.com/evervue/assets/true-light.png',
      'light': 'True Light',
      'model': '(2700K - 6200K)'
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
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
                        'https://www.evervue.com/evervue/assets/product/mosaic/framed-no-fog-mirror-for-bathroom.jpg',
                    width: double.infinity,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(bottom: 25),
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
                                'https://www.evervue.com/evervue/assets/product/mosaic/mosaic.jpg',
                            height: 35,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        const Divider(
                          height: 10,
                          thickness: 1,
                          color: Color(0xff9F9081),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text(
                            'Mosaic Frames | Made-to-Measure | Stainless Steel or Brass Frames | True Light Technology',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 30),
                          child: const Text(
                            'Our MOSAIC mirrors come in stainless steel or brass frames, which are assembled from hundreds or thousands of small pieces of colored glass, stone, or other materials.'
                            '\n\nTrue Light Technology is incorporated into each MOSAIC mirror, providing exceptional lighting and a clear reflection. The mosaic design adds a touch of elegance and sophistication to any space, making it the perfect addition to any bathroom or dressing area.'
                            '\n\nAt Grand Mirrors, we are committed to providing customized solutions to meet your unique needs and preferences. Our MOSAIC mirrors are made to measure, ensuring a perfect fit for your space. Choose from our stainless steel or brass frames and enjoy the timeless beauty of the Grand Mirrors MOSAIC.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        const Divider(
                          height: 10,
                          thickness: 1,
                          color: Color(0xff9F9081),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Text(
                            'Our Designs',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 30),
                          child: const Text(
                            'At Grand Mirrors, we offer a variety of designs and components for your brand-new MOSAIC Mirror. Explore our extensive online catalogue to find the perfect style and frame for your unique taste and preferences.'
                            '\n\nMost of our frames are 6 inches (150 millimeters) in width, providing a balance between functionality and aesthetics. Choose from a variety of mosaic patterns and materials, including glass, stone, and more, to create a truly unique and personalized mirror.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      children: <Widget>[
                        Wrap(
                          children: designs.map((designs) {
                            return Container(
                              width:
                                  (MediaQuery.of(context).size.width - 30) / 3,
                              padding: const EdgeInsets.all(5),
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
                                    imageUrl: designs.image,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    designs.title,
                                    style: const TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    designs.code,
                                    style: const TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SpecsViewer(
                                    pdfTitle: 'Frames: PDF View',
                                    pdfSpecs:
                                        'assets/frames/Design-Collection-Frames-Lamps-Bulbs.pdf',
                                  )),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xffE0A957),
                        padding: const EdgeInsets.fromLTRB(50, 18, 50, 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text(
                        'View PDF',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                    child: Column(
                      children: <Widget>[
                        const Divider(
                          height: 10,
                          thickness: 1,
                          color: Color(0xff9F9081),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Text(
                            'Powerful Light Options\nto Suit Your Needs',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 10),
                          child: const Text(
                            'Grand Mirrors utilizes innovative light transfer technology that directs light precisely towards you, resulting in an exceptionally effective illumination that is up to three times brighter than other mirrors on the market.'
                            '\n \nChoose from an array of powerful lighting options, including True Light, Cool Light, Philips LED Light, or Warm Light, to create the perfect ambiance in your space.'
                            '\n \nFor added convenience and customization, we offer wireless dimmers for Cool, Warm, and True Light options. You can also choose to include Philips LED lights with dimmers for the ultimate in personalized lighting control.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        const VideoPlayerWidget(
                          source:
                              'assets/grandmirrors/images/product/mosaic/vanity-mirror-frame-with-true-light.mp4',
                        ),
                        LEDLight(lightImages: ledLightPaths),
                        PhilipsLEDLight(
                            philipslightImages: philipsLedLightPaths),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Text(
                            'Effortless Installation',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                        ),
                        const VideoPlayerWidget(
                          source:
                              'assets/grandmirrors/images/product/mosaic/best-anti-fog-easy-to-install-mirror.mp4',
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text(
                            'Installing your Grand Mirrors is a breeze. Simply attach the two provided strips to the wall using the included hardware, connect the mirror to the power supply, and hang it on the wall. The installation process is straightforward and typically takes between 30 and 40 minutes.',
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 5,
                left: 15,
                right: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                spreadRadius: .5,
                                blurRadius: 3,
                                offset: Offset(0, 2),
                                color: Color.fromARGB(45, 0, 0, 0))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const GrandMirrorsMainPage()),
                            );
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                    ),
                    FloatingActionButton.small(
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
                    ),
                  ],
                )),
          ],
        ),
      ),
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
