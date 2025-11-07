// ignore_for_file: strict_top_level_inference

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PowerSupplyPage extends StatefulWidget {
  const PowerSupplyPage({super.key});

  @override
  State<PowerSupplyPage> createState() => _PowerSupplyPageState();
}

class _PowerSupplyPageState extends State<PowerSupplyPage> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> imageSelect = [
    {
      'asset':
          'https://www.evervue.com/evervue/assets/standard-power-supply.jpg',
      'title': 'Standard Power Supply (SPS-100)\n',
      'pdf': ''
    },
    {
      'asset':
          'https://www.evervue.com/evervue/assets/hardwired-non-dimmable-power-supply.jpg',
      'title': 'Hardwired Non-Dimmable Power Supply (SPS-200)',
      'pdf': 'Hardwired-Non-Dimmable-Power-Supply-SPS-200.pdf'
    },
    {
      'asset':
          'https://www.evervue.com/evervue/assets/hardwired-dimmable-power-supply.jpg',
      'title': 'Hardwired Dimmable Power Supply (SPS-300)',
      'pdf': 'Hardwired-Dimmable-Power-Supply-SPS-300.pdf'
    },
    {
      'asset':
          'https://www.evervue.com/evervue/assets/hardwired-triac-dimmable-power-supply.jpg',
      'title': 'Hardwired TRIAC Dimmable Power Supply (SPS-400)',
      'pdf': 'Hardwired-TRIAC-Dimmable-Power-Supply-SPS-400.pdf'
    },
  ];

  final List<Map<String, String>> imageView = [
    {
      'large': 'Standard Power Supply (SPS-100)',
      'normal':
          'In its standard configuration, every Grand Mirror comes with a power supply that plugs directly into an AC outlet. (Plug type varies by market.)\n\nCertification: UL Listed\nPower Input: 100-240V AC\nPower Output: 24V DC\nAmperage: Varies based on mirror configuration\n\nWe also offer power extension cables, allowing the power supply to be positioned away from the mirror.',
      'asset':
          'https://www.evervue.com/evervue/assets/standard-power-supply.jpg',
    },
    {
      'large': 'Hardwired Non-Dimmable Power Supply (SPS-200)',
      'normal':
          'For professional installations, we recommend the hardwired, waterproof power supply for safe operation in any environment. This option is ideal when the lighting is controlled with a switch only (not with a dimmer).\n\nBrand: Meanwell (ELG series)\nCertification: UL8750 (UL International)\nPower Input: 100-277V AC\nPower Output: 24V DC (amperage varies depending on the mirror configuration)\nThe DC wires of can be extended up to 20 feet (6 meters).',
      'asset':
          'https://www.evervue.com/evervue/assets/hardwired-non-dimmable-power-supply.jpg',
    },
    {
      'large': 'Hardwired Dimmable Power Supply (SPS-300)',
      'normal':
          'For professional installations where dimming is required or to set the mirrors to a specific brightness, we recommend this power supply. It is waterproof, and the brightness can be adjusted between 10% and 100% using the adjustment button on the power supply.\n\nBrand: Meanwell (HLG series)\nCertification: UL 8750 (UL International)\nPower Input: 100-277V AC\nPower Output: 24V DC (amperage varies depending on the mirror configuration)\nThe DC wires can be extended up to 20 feet (6 meters).',
      'asset':
          'https://www.evervue.com/evervue/assets/hardwired-dimmable-power-supply.jpg',
    },
    {
      'large': 'Hardwired TRIAC Dimmable Power Supply (SPS-400)',
      'normal':
          'For professional installations where a dimmer from another vendor is used, we recommend this high-quality, waterproof power supply. TRIAC technology offers a seamless dimming feature, making it ideal for users who frequently adjust the dimmer to set the exact brightness they desire. It ensures safe operation in any environment and is compatible with all major brands of dimmers and controllers.\n\nCertification: UL Listed\nPower Input: 100-277V AC\nPower Output: 24V DC (amperage varies depending on the mirror configuration)\nThe DC wires can be extended up to 20 feet (6 meters).',
      'asset':
          'https://www.evervue.com/evervue/assets/hardwired-triac-dimmable-power-supply.jpg',
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
                          'https://www.evervue.com/evervue/assets/grandmirrors-power-supply.png',
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
                            'Enhanced Power Supply for Grand Mirrors',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Wrap(
                              spacing: 20,
                              children:
                                  imageSelect.asMap().entries.map((entry) {
                                int index = entry.key;
                                Map<String, dynamic> options = entry.value;

                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Container(
                                    width: ifScreen
                                        ? (screenWidth / 4) - 40
                                        : (screenWidth / 2) - 40,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: selectedIndex == index
                                                    ? const Color(0xFFE0A957)
                                                    : Colors.transparent,
                                                width: 2))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5),
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
                                              imageUrl: options['asset']),
                                        ),
                                        Text(
                                          options['title'],
                                          textAlign: TextAlign.center,
                                        ),
                                        if (selectedIndex == index &&
                                            options['pdf'] != null &&
                                            options['pdf'].isNotEmpty)
                                          InkWell(
                                            onTap: () =>
                                                _pdfLink(options['pdf']),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Text(
                                                'Download PDF Specifications',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color(0xFFE0A957),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            height: ifScreen ? 30 : 15,
                          ),
                          Wrap(
                            alignment: WrapAlignment.center,
                            runAlignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              if (!ifScreen) ...[
                                AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 300),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    margin: const EdgeInsets.only(bottom: 30),
                                    key: ValueKey<int>(selectedIndex),
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
                                      imageUrl: imageView[selectedIndex]
                                          ['asset']!,
                                    ),
                                  ),
                                ),
                              ],
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                width: ifScreen
                                    ? (screenWidth * 0.5) - 20
                                    : screenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      imageView[selectedIndex]['large']!,
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                    const SizedBox(height: 15),
                                    Text(imageView[selectedIndex]['normal']!),
                                  ],
                                ),
                              ),
                              if (ifScreen) ...[
                                const SizedBox(height: 30),
                                AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 300),
                                  child: SizedBox(
                                    key: ValueKey<int>(selectedIndex),
                                    width: (screenWidth * 0.5) - 20,
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
                                      imageUrl: imageView[selectedIndex]
                                          ['asset']!,
                                    ),
                                  ),
                                ),
                              ],
                            ],
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

Future<void> _pdfLink(link) async {
  final url = 'https://grandmirrors.com/wp-content/uploads/$link';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
