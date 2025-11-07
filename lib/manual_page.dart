// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ManualsPage extends StatefulWidget {
  const ManualsPage({super.key});

  @override
  State<ManualsPage> createState() => _ManualsPageState();
}

class _ManualsPageState extends State<ManualsPage> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = '';

  final List<Map<String, String>> manuals = [
    {
      'title': '• MirrorVue Product Brochure',
      'url':
          'https://https://www.evervue.com/wp-content/uploads/mirrorvue-product-brochure.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• Compare MirrorVue TV with Regular TV',
      'url':
          'https://www.evervue.com/wp-content/uploads/compare-mirrorvue-tv-with-regular-tv-behind-a-mirror.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• MirrorVue Quick Facts',
      'url':
          'https://www.evervue.com/wp-content/uploads/mirrorvue-quick-facts.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• MirrorVue Smart Touch',
      'url':
          'https://www.evervue.com/wp-content/uploads/mirrorvue-smart-touch.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• MirrorVue Stainless Steel Frames',
      'url':
          'https://www.evervue.com/wp-content/uploads/mirrorvue-stainless-steel-frames.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• MirrorVue Standard Mount – Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/MirrorVue-Standard-Mount-Installation-Manual.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• MirrorVue Recessed Mount – Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/MirrorVue-Recessed-Mount-Installation-Manual.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• MirrorVue Magnet Mount – Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/MirrorVue-Magnet-Mount-Installation-Manual.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• MirrorVue RM100 Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/MirrorVue-RM100-Installation-Manual.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• MirrorVue RM150 Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/MirrorVue-RM150-Installation-Manual.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• MirrorVue RM200 and RM250 Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/MirrorVue-RM200-and-RM250-Installation-Manual.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• MirrorVue Motion Detection Installation Instructions',
      'url':
          'https://www.evervue.com/wp-content/uploads/MirrorVue-Motion-Detection-Installation-Instructions.pdf',
      'category': 'MIRRORVUE MIRROR TV'
    },
    {
      'title': '• Grand Mirrors Product Brochure',
      'url':
          'https://www.grandmirrors.com/wp-content/uploads/grand-mirrors-product-brochure-2025v1.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• LUX Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/GrandMirrors-Lux-Installation-Guide.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors LUX (Trifold Mirror)',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Grand-Mirrors-Lux-Trifold-Mirror-Installation-Manual.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors LUX Installation Video',
      'url': 'https://www.youtube.com/watch?v=blrZTums3m0',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors LUMIÈRE Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/GrandMirrors-Lumiere-Installation-Guide.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors ECLIPSE Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/GrandMirrors-Eclipse-Installation-Guide.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors ECLIPSE Installation Video',
      'url': 'https://www.youtube.com/watch?v=Vt53rjDRG8Y',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors HOLLYWOOD Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/GrandMirrors-Hollywood-Installation-Guide.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors BAROQUE Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Hollywood-Baroque-Mirror-Installation-Manual.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors DECO Modula Installation Manual',
      'url': 'https://www.youtube.com/watch?v=AsbAzf359tg',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors DECO Frame Installation Manual',
      'url': 'https://www.youtube.com/watch?v=KHGV9lIfb_M',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors DECO Art Installation Manual',
      'url': 'https://www.youtube.com/watch?v=UpEJo5fjg0I',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors CABINET Installation Manual',
      'url': 'https://www.youtube.com/watch?v=_Uy5DHR7mbc',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors MOSAIC Installation Manual',
      'url': 'https://www.youtube.com/watch?v=0CVRoG0gX_k',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors MEDITERRANEAN Installation Manual',
      'url': 'https://www.youtube.com/watch?v=XXMf-DAke2g',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors ALLURE Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/GrandMirrors-Allure-Installation-Guide.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors Motion Detection Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Grand-Mirrors-Motion-Detection-Manual.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• RM100 Remote Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/RM100-Remote-Manual.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• RM120 Remote Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/RM120-Remote-Manual.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• RM130 Remote Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/RM130-Remote-Manual.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• RM150 Remote Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/RM150-Remote-Manual.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• RM200 Remote Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/RM200-Remote-Manual.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Touch Use Instructions',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/TouchControl-Use-Instructions.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• Grand Mirrors Wifi Control 1000 Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Grand-Mirrors-Wifi-Control-1000.pdf',
      'category': 'GRAND MIRRORS'
    },
    {
      'title': '• DecoVue Product Brochure',
      'url':
          'https://www.decovue.com/wp-content/uploads/Decovue-Product-Brochure.pdf',
      'category': 'DECOVUE FRAMED TV'
    },
    {
      'title': '• DecoVue Catalog',
      'url':
          'https://www.evervue.com/wp-content/uploads/Evervue-DecoVue-Catalog.pdf',
      'category': 'DECOVUE FRAMED TV'
    },
    {
      'title': '• DecoVue Frameless Catalog',
      'url':
          'https://www.evervue.com/wp-content/uploads/Frameless-DecoVue-Catalog.pdf',
      'category': 'DECOVUE FRAMED TV'
    },
    {
      'title': '• DecoVue Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/Decovue-Installation-Manual.pdf',
      'category': 'DECOVUE FRAMED TV'
    },
    {
      'title': '• Ocea Pro Product Brochure',
      'url':
          'https://www.oceatv.com/wp-content/uploads/Ocea-Pro-Smart-Touch-Bathroom-TV-Product-Brochure.pdf',
      'category': 'OCEA BATHROOM TV'
    },
    {
      'title': '• Ocea Style Product Brochure',
      'url':
          'https://www.oceatv.com/wp-content/uploads/Ocea-Style-SmartTouch-Bathroom-TV-Product-Brochure.pdf',
      'category': 'OCEA BATHROOM TV'
    },
    {
      'title': '• Ocea Leaflet',
      'url': 'https://www.evervue.com/wp-content/uploads/PDF/Ocea-Leaflet.pdf',
      'category': 'OCEA BATHROOM TV'
    },
    {
      'title': '• Why Buy Ocea',
      'url': 'https://www.evervue.com/wp-content/uploads/PDF/Why-Buy-Ocea.pdf',
      'category': 'OCEA BATHROOM TV'
    },
    {
      'title': '• Ocea Pro Drill-Free Mount – Installation Manual',
      'url':
          'https://www.oceatv.com/wp-content/uploads/Ocea-Pro-Drill-Free-Mount-Installation-Manual.pdf',
      'category': 'OCEA BATHROOM TV'
    },
    {
      'title': '• Ocea Pro Hang on the Wall – Installation Manual',
      'url':
          'https://www.oceatv.com/wp-content/uploads/Ocea-Pro-Hang-on-the-Wall-Installation-Manual.pdf',
      'category': 'OCEA BATHROOM TV'
    },
    {
      'title': '• Ocea Pro Swivel Mount – Installation Manual',
      'url':
          'https://www.oceatv.com/wp-content/uploads/Ocea-Pro-Swivel-Mount-Installation-Manual.pdf',
      'category': 'OCEA BATHROOM TV'
    },
    {
      'title': '• Ocea Pro Recessed Mount – Installation Manual',
      'url':
          'https://www.oceatv.com/wp-content/uploads/Ocea-Pro-Recessed-Mount-Installation-Manual.pdf',
      'category': 'OCEA BATHROOM TV'
    },
    {
      'title':
          'Ocea Pro Lift TV System for Ocea Pro 220 and 280 – Installation Manual',
      'url':
          'https://www.oceatv.com/wp-content/uploads/Ocea-Pro-Lift-Mount-Installation-Manual.pdf',
      'category': 'OCEA BATHROOM TV'
    },
    {
      'title': '• Ocea Style Smart Bathroom TV – Installation Manual',
      'url':
          'https://www.oceatv.com/wp-content/uploads/Ocea-Style-Smart-Bathroom-TV-Installation-Manual.pdf',
      'category': 'OCEA BATHROOM TV'
    },
    {
      'title': '• Cosmos Outdoor Product Brochure',
      'url':
          'https://www.cosmosoutdoortv.com/wp-content/uploads/Cosmos-Outdoor-TV-Brochure.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• Cosmos Marine Product Brochure',
      'url':
          'https://www.cosmosoutdoortv.com/wp-content/uploads/Cosmos-Marine-TV-Brochure.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• Cosmos Product Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cosmos-Outdoor-TV-Product-Manual.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• Cosmos Outdoor Ceiling Mount Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cosmos-Outdoor-Ceiling-Mount-Installation-Manual.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• Cosmos Outdoor Table Mount Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cosmos-Outdoor-Table-Mount-Installation-Manual.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• Cosmos Outdoor Permanent Mount Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cosmos-Outdoor-Permanent-Mount-Installation-Manual.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• Cosmos Outdoor Self Standing Mount Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cosmos-Outdoor-Self-Standing-Mount-Installation-Manual.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• Cosmos Outdoor Side Wall Mount Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cosmos-Outdoor-Side-Wall-Mount-Installation-Manual.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• Cosmos Outdoor Standard Wall Mount Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cosmos-Outdoor-Standard-Wall-Mount.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• Cosmos Outdoor Hot Tub Mount Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cosmos-Outdoor-Hot-Tub-Installation-Manual.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title':
          'Cosmos Outdoor TV Stone Base Self Standing Mount Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cosmos-Outdoor-TV-Stone-Base-Self-Standing-Mount-Installation-Manual.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• Cosmos Outdoor Swivel Wall Mount Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cosmos-Outdoor-Swivel-Installation-Manual.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• Cosmos Outdoor Wheeled Floor Mount Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cosmos-Outdoor-Wheeled-Floor-Mount-Installation-Manual.pdf',
      'category': 'COSMOS TV'
    },
    {
      'title': '• QAIO, The Smarter Mirror',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/QAIO-the-Smarter-Mirror.pdf',
      'category': 'QAIO'
    },
    {
      'title': '• QAIO Mirror Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Installation-Manual-for-QAIO-Mirror.pdf',
      'category': 'QAIO'
    },
    {
      'title': '• Setting Up Alexa on QAIO Mirror',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Setting-Up-Alexa-on-QAIO-Mirror.pdf',
      'category': 'QAIO'
    },
    {
      'title': '• MirrorFeeds Installation Manual for QAIO',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/MirrorFeeds-Installation-Manual-for-QAIO.pdf',
      'category': 'QAIO'
    },
    {
      'title': '• QAIO Mirror Nightlight Adjustment Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/QAIO-Mirror-Nightlight-Adjustment-Manual.pdf',
      'category': 'QAIO'
    },
    {
      'title': '• Qaio Mirror Full Product Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/QAIO-Mirror-Full-Product-Manual.pdf',
      'category': 'QAIO'
    },
    {
      'title': '• QAIO Flex (Lean On Mount) Installation and Set Up Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/QAIO-Flex-Lean-on-Mount-Installation-and-Set-Up-Manual.pdf',
      'category': 'QAIO'
    },
    {
      'title': '• QAIO Flex (Wall Mount) Installation and Setup Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/QAIO-Flex-Wall-Mount-Installation-and-Setup-Manual.pdf',
      'category': 'QAIO'
    },
    {
      'title': '• QAIO Flex (Stand Alone Mount) Installation and Setup Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/QAIO-Flex-Stand-Alone-Mount-Installation-and-Setup-Manual.pdf',
      'category': 'QAIO'
    },
    {
      'title': '• Setting Up Alexa on QAIO Flex',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Setting-Up-Alexa-on-QAIO-Flex.pdf',
      'category': 'QAIO'
    },
    {
      'title': '• CabiTV Product Brochure',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/CabiTV-Product-Brochure.pdf',
      'category': 'CABITV KITCHEN TV'
    },
    {
      'title': '• CabiTV CT 100 Leaflet',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/CabiTV-CT-100-Leaflet.pdf',
      'category': 'CABITV KITCHEN TV'
    },
    {
      'title': '• CabiTV CT 200 Leaflet',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/CabiTV-CT-200-Leaflet.pdf',
      'category': 'CABITV KITCHEN TV'
    },
    {
      'title': '• CabiTV CT-100 Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/CabiTV-CT-100-Installation-Manual.pdf',
      'category': 'CABITV KITCHEN TV'
    },
    {
      'title': '• CabiTV CT-200 Installation Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/CabiTV-CT-200-Installation-Manual.pdf',
      'category': 'CABITV KITCHEN TV'
    },
    {
      'title': '• Spectrum Leaflet',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Spectrum-Leaflet.pdf',
      'category': 'SPECTRUM SMART TV DISPLAY'
    },
    {
      'title': '• Spectrum Full Product Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Spectrum-Full-Product-Manual.pdf',
      'category': 'SPECTRUM SMART TV DISPLAY'
    },
    {
      'title': '• Cinema Product Brochure',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Cinema-TV-Product-Manual.pdf',
      'category': 'CINEMA TV'
    },
    {
      'title': '• Aqua Remote Control Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/Aqua-Remote-Control-Manual.pdf',
      'category': 'ACCESSORIES'
    },
    {
      'title': '• Evervue Defogger',
      'url':
          'https://www.evervue.com/wp-content/uploads/PDF/Evervue-Defogger.pdf',
      'category': 'ACCESSORIES'
    },
    {
      'title': '• Evervue IR-30 Repeater',
      'url':
          'https://www.evervue.com/wp-content/uploads/Evervue-IR30-Repeater.pdf',
      'category': 'ACCESSORIES'
    },
    {
      'title': '• Evervue LED Backlight',
      'url':
          'https://www.evervue.com/wp-content/uploads/Evervue-LED-Backlight.pdf',
      'category': 'ACCESSORIES'
    },
    {
      'title': '• Evervue RS-232 Serial Port',
      'url':
          'https://www.evervue.com/wp-content/uploads/Evervue-RS232-Serial-Port.pdf',
      'category': 'ACCESSORIES'
    },
    {
      'title': '• Evervue Splash Speakers',
      'url':
          'https://www.evervue.com/wp-content/uploads/Evervue-Splash-Speakers.pdf',
      'category': 'ACCESSORIES'
    },
    {
      'title': '• Evervue Zepp Remote',
      'url':
          'https://www.evervue.com/wp-content/uploads/Evervue-Zepp-Remote.pdf',
      'category': 'ACCESSORIES'
    },
    {
      'title': '• New Evervue Zepp Remote Pro Manual',
      'url':
          'https://www.evervue.com/wp-content/uploads/New-Zepp-Remote-Pro_Manual.pdf',
      'category': 'ACCESSORIES'
    },
    {
      'title': '• Power On Settings for 4K',
      'url':
          'https://www.evervue.com/wp-content/uploads/Power-On-Settings-for-4K.pdf',
      'category': 'ACCESSORIES'
    },
    {
      'title': '• Power On Settings for HDMI',
      'url':
          'https://www.evervue.com/wp-content/uploads/Power-On-Settings-for-HDMI.pdf',
      'category': 'ACCESSORIES'
    },
    {
      'title': '• SoundWave (SW-50) Installation Instructions',
      'url':
          'https://www.evervue.com/wp-content/uploads/SoundWave-SW50-Installation-Instructions.pdf',
      'category': 'ACCESSORIES'
    },
    {
      'title': '• SoundWave (SW-80) Installation Instructions',
      'url':
          'https://www.evervue.com/wp-content/uploads/SoundWave-SW80-Installation-Instructions.pdf',
      'category': 'ACCESSORIES'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    List<Map<String, String>> searchedManuals = manuals.where((manual) {
      return manual['title']!.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                width: screenWidth,
                child: const Text(
                  'Product Manuals',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: TextField(
                  cursorColor: const Color(0xffB32927),
                  cursorHeight: 16,
                  controller: searchController,
                  decoration: const InputDecoration(
                    hintText: 'Search Manual',
                    hintStyle: TextStyle(fontSize: 13),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Color(0xffB32927),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  style: const TextStyle(fontSize: 13),
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ..._buildSections(searchedManuals),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildSections(List<Map<String, String>> searchedManuals) {
    final categories = manuals.map((manual) => manual['category']).toSet();
    return categories.map((category) {
      final categoryManuals = searchedManuals
          .where((manual) => manual['category'] == category)
          .toList();
      if (categoryManuals.isEmpty) return const SizedBox.shrink();

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
            child: Text(
              category!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: categoryManuals.map((manual) {
                return Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 0.5))),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                  child: InkWell(
                    onTap: () => _launchUrl(manual['url']!),
                    child: Text(
                      manual['title']!,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      );
    }).toList();
  }
}

Future<void> _launchUrl(String webUrl) async {
  final url = '$webUrl';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

void main() {
  runApp(const MaterialApp(
    home: ManualsPage(),
  ));
}
