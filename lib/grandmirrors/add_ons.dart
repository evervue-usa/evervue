import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AddOnsPage extends StatefulWidget {
  const AddOnsPage({super.key});

  @override
  State<AddOnsPage> createState() => _AddOnsPageState();
}

class _AddOnsPageState extends State<AddOnsPage> {
  final List<Map<String, String>> addOns = [
    {
      'asset': 'assets/grandmirrors/images/others/addons/custom-cut-outs.mp4',
      'title': 'Custom Cut-Outs',
      'content':
          'Experience precision with our custom cut-outs tailored to accommodate faucets or light fixtures. Utilizing advanced CNC technology, we ensure a perfect fit for your mirror, crafted with remarkable accuracy.'
    },
    {
      'asset': 'assets/grandmirrors/images/others/addons/custom-frames.mp4',
      'title': 'Frames',
      'content':
          'Enhance the visual appeal of your mirror by selecting from our extensive collection of Stainless Steel and Black Walnut wooden frames, designed to suit diverse tastes.'
    },
    {
      'asset': 'https://www.evervue.com/evervue/assets/beveled-edges.jpg',
      'title': 'Beveled Edges',
      'content':
          'Elevate your mirror\'s elegance with our finely crafted beveled edges, available on most mirrors with bevel widths up to 1.5 inches.'
    },
    {
      'asset': 'https://www.evervue.com/evervue/assets/defogger-add-ons.jpg',
      'title': 'Defogger',
      'content':
          'Equip your mirror with a defogger to maintain a clear and pristine reflection, even after a steamy shower. Choose from various shapes and sizes to match your mirror\'s dimensions.'
    },
    {
      'asset': 'https://www.evervue.com/evervue/assets/night-light.jpg',
      'title': 'Night Light',
      'content':
          'Illuminate your space with our discreet night light, which shines from beneath the mirror. Featuring a concealed sensor, this practical addition enhances the ambiance of your environment.'
    },
    {
      'asset':
          'https://www.evervue.com/evervue/assets/stainless-steel-brackets.jpg',
      'title': 'Stainless Steel Brackets',
      'content':
          'Opt for our robust stainless steel brackets, available in numerous styles, for secure ceiling or countertop mirror mounting. Contact us for more information.'
    },
    {
      'asset': 'assets/grandmirrors/images/others/addons/motion-sensor.mp4',
      'title': 'Motion Sensor',
      'content':
          'Upgrade your mirror with a motion sensor for added convenience. The LED light activates as you approach and automatically turns off five minutes after you exit the room, making it an excellent choice for salons.'
    },
    {
      'asset': 'https://www.evervue.com/evervue/assets/touch-control.jpg',
      'title': 'Touch Control',
      'content':
          'Effortlessly control your mirror\'s settings with our intuitive touch control. Easily adjust brightness, color, and program while saving personalized preferences. Compatible with all Grand Mirrors products, touch control offers a seamless user experience.'
    },
    {
      'asset':
          'https://www.evervue.com/evervue/assets/grand-mirrors-logo-add-ons.jpg',
      'title': 'Logo',
      'content':
          'Add an illuminated logo to your mirror to make a lasting impression. It\'s a perfect feature for offices, restaurants, spas, and barber shops.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 700;

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
                          'https://www.evervue.com/evervue/assets/grandmirrors-addons.png',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 20),
                      child: Column(
                        children: [
                          const Text(
                            'Personalized Add-Ons for Your Grand Mirrors',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              runAlignment: WrapAlignment.center,
                              spacing: 15,
                              runSpacing: 40,
                              children: addOns.asMap().entries.map((entry) {
                                Map<String, dynamic> option = entry.value;
                                final imagePath = option['asset'];
                                final isVideo = imagePath.endsWith('.mp4');

                                return SizedBox(
                                  width: ifScreen
                                      ? (screenWidth / 3) - 25
                                      : screenWidth - 20,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      isVideo
                                          ? VideoPlayerWidget(source: imagePath)
                                          : CachedNetworkImage(
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
                                              imageUrl: imagePath,
                                              width: screenWidth,
                                              fit: BoxFit.cover,
                                            ),
                                      const SizedBox(height: 20),
                                      Text(
                                        option['title'],
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(option['content']),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ))
                ],
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
