import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MountsPage extends StatelessWidget {
  const MountsPage({super.key});

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
                          'https://www.evervue.com/evervue/assets/mounts.png',
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
                          'https://www.evervue.com/evervue/assets/stainless-steel-lighted-mirror.jpg',
                      width: double.infinity,
                    ),
                    Container(
                      margin: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                const Text(
                                  'Introducing Grand Mirrors',
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
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
                                      'https://www.evervue.com/evervue/assets/mounts-logo.png',
                                  height: 25,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Upgrade your mirror mounting experience with the Grand Mirrors Mounts collection, featuring durable, stylish, and versatile mounting options for your Grand Mirrors products.',
                                  style: TextStyle(
                                    height: 1.5,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: Column(
                              children: [
                                const Text(
                                  'Grand Mirrors Countertop Mount:',
                                  style: TextStyle(fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Made of long-lasting stainless steel, the Grand Mirrors Countertop Mount offers both round and square designs to suit your mirror and mounting area preferences. This robust mounting bracket is compatible with most Grand Mirrors products, customisable in size, and features a hidden power cord compartment within the tube. Choose between a brushed or polished finish to enhance the look of your space.',
                                  style: TextStyle(
                                    height: 1.5,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                      '• Diameter round tube: 1.5” / 40mm.\n'
                                      '• Dimension square tube: 1.5” x 1.5” / 40mm x 40mm.\n',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        height: 1.5,
                                      )),
                                ),
                                SizedBox(
                                  width: screenWidth - 50,
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
                                      imageUrl:
                                          'https://www.evervue.com/evervue/assets/stainless-steel-mounts.jpg'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: Column(
                              children: [
                                const Text(
                                  'Grand Mirrors Ceiling Mount:',
                                  style: TextStyle(fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'The Grand Mirrors Ceiling Mount, constructed from stainless steel, is available in round or square tube designs to match the shape of your mirror and mounting space requirements. This strong, durable mount is compatible with almost all Grand Mirrors models and can be customised to your specifications. The power cords are neatly concealed inside the tube, ensuring a clean, uncluttered appearance. Choose from a brushed or polished finish to complete your look.',
                                  style: TextStyle(
                                    height: 1.5,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                      '• Diameter round tube: 1.5” / 40mm.\n'
                                      '• Dimension square tube: 1.5” x 1.5” / 40mm x 40mm.\n',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        height: 1.5,
                                      )),
                                ),
                                SizedBox(
                                  width: screenWidth - 50,
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
                                      imageUrl:
                                          'https://www.evervue.com/evervue/assets/stainless-steel-ceiling.jpg'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: Column(
                              children: [
                                const Text(
                                  'Stainless Steel',
                                  style: TextStyle(fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Known for its exceptional strength and resistance to corrosion, stainless steel offers long-lasting performance even in harsh environments. Select from a Rounded Steel Tube or a Square Steel Tube to complement your mirror\ns design and the contours of your mounting surface.\n\n'
                                  'Elevate your mirror setup with the Grand Mirrors Mounts collection, providing reliable, elegant, and adaptable mounting solutions for your unique space.',
                                  style: TextStyle(
                                    height: 1.5,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(height: 30),
                                SizedBox(
                                  width: (screenWidth - 50) * .7,
                                  child: Column(
                                    children: [
                                      CachedNetworkImage(
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
                                              'https://www.evervue.com/evervue/assets/round-stainless-steel-mount-bracket.jpg'),
                                      const SizedBox(height: 10),
                                      const Text('Rounded Steel Tube')
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 30),
                                SizedBox(
                                  width: (screenWidth - 50) * .7,
                                  child: Column(
                                    children: [
                                      CachedNetworkImage(
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
                                              'https://www.evervue.com/evervue/assets/square-stainless-steel-mount-bracket.jpg'),
                                      const SizedBox(height: 10),
                                      const Text('Square Steel Tube')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 50),
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
                                    'https://www.evervue.com/evervue/assets/ceiling-mount-eclipse.jpg'),
                          ),
                          const SizedBox(
                            height: 30,
                          )
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
