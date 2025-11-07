import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/hosp_slider.dart';
import 'package:flutter/material.dart';

class QaioHospitalityPage extends StatefulWidget {
  const QaioHospitalityPage({super.key});

  @override
  State<QaioHospitalityPage> createState() => _QaioHospitalityPageState();
}

class _QaioHospitalityPageState extends State<QaioHospitalityPage> {
  final List<String> customMedia = [
    'https://www.evervue.com/evervue/assets/nivae-haus-logo.jpg',
    'https://www.evervue.com/evervue/assets/movenpick-hotel-riyadh-logo.jpg',
    'https://www.evervue.com/evervue/assets/metro-hotel-logo.jpg',
    'https://www.evervue.com/evervue/assets/mercedes-benz-of-birmingham-logo.jpg',
    'https://www.evervue.com/evervue/assets/marriott-san-diego-hotel-logo.jpg',
    'https://www.evervue.com/evervue/assets/marriott-international-logo.jpg',
    'https://www.evervue.com/evervue/assets/maksoud-plaza-logo.jpg',
    'https://www.evervue.com/evervue/assets/kempinski-hotel-corvinus-in-budapest-logo.jpg',
    'https://www.evervue.com/evervue/assets/javits-center-logo.jpg',
    'https://www.evervue.com/evervue/assets/intercontinental-mauritius-resort-logo.jpg',
    'https://www.evervue.com/evervue/assets/icafe-logo.jpg',
    'https://www.evervue.com/evervue/assets/hyatt-regency-baku-logo.jpg',
    'https://www.evervue.com/evervue/assets/hotel-g-san-francisco-logo.jpg',
    'https://www.evervue.com/evervue/assets/hotel-grand-pacific-logo.jpg',
    'https://www.evervue.com/evervue/assets/hotel-elefant-logo.jpg',
    'https://www.evervue.com/evervue/assets/park-hyatt-logo.jpg',
    'https://www.evervue.com/evervue/assets/park-hyatt-bangkok-logo.jpg',
    'https://www.evervue.com/evervue/assets/park-hotel-switzerland-logo.jpg',
    'https://www.evervue.com/evervue/assets/phillip-nimmo-logo.jpg',
    'https://www.evervue.com/evervue/assets/renaissance-dallas-hotel-logo.jpg',
    'https://www.evervue.com/evervue/assets/rickmers-logo.jpg',
    'https://www.evervue.com/evervue/assets/rosewood-hotel-logo.jpg',
    'https://www.evervue.com/evervue/assets/state-dock-logo.jpg',
    'https://www.evervue.com/evervue/assets/talbot-hotel-stillorgan-logo.jpg',
    'https://www.evervue.com/evervue/assets/the-manila-hotel-logo.jpg',
    'https://www.evervue.com/evervue/assets/peloton-logo.jpg',
    'https://www.evervue.com/evervue/assets/the-plaza-new-york-logo.jpg',
    'https://www.evervue.com/evervue/assets/the-ritz-carlton-logo.jpg',
    'https://www.evervue.com/evervue/assets/the-temple-house-logo.jpg',
    'https://www.evervue.com/evervue/assets/the-white-swan-hotel-logo.jpg',
    'https://www.evervue.com/evervue/assets/vondel-hotels-logo.jpg',
    'https://www.evervue.com/evervue/assets/wilkes-university-logo.jpg',
    'https://www.evervue.com/evervue/assets/ames-boston-hotel-logo.jpg',
    'https://www.evervue.com/evervue/assets/batavia-stad-fashion-outlet-logo.jpg',
    'https://www.evervue.com/evervue/assets/borgata-hotel-logo.jpg',
    'https://www.evervue.com/evervue/assets/chakra-logo.jpg',
    'https://www.evervue.com/evervue/assets/conrad-dubai-hotel-logo.jpg',
    'https://www.evervue.com/evervue/assets/crystal-cruises-logo.jpg',
    'https://www.evervue.com/evervue/assets/danubius-hotel-group-logo.jpg',
    'https://www.evervue.com/evervue/assets/doubletree-suites-logo.jpg',
    'https://www.evervue.com/evervue/assets/gerstner-catering-logo.jpg',
    'https://www.evervue.com/evervue/assets/gm-financial-logo.jpg',
    'https://www.evervue.com/evervue/assets/hammer-and-nails-logo.jpg',
    'https://www.evervue.com/evervue/assets/hampton-inn-logo.jpg',
    'https://www.evervue.com/evervue/assets/harbors-edge-logo.jpg',
    'https://www.evervue.com/evervue/assets/harlem-hookah-logo.jpg',
    'https://www.evervue.com/evervue/assets/hotel-du-pont-logo.jpg',
    'https://www.evervue.com/evervue/assets/hotel-bratislava-logo.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              width: double.infinity,
              child: CachedNetworkImage(
                placeholder: (context, url) => const Text(
                  'Loading assets...',
                  style: TextStyle(
                    color: Color.fromARGB(255, 168, 0, 0),
                    fontSize: 16,
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageUrl:
                    'https://www.evervue.com/evervue/assets/bathroom-with-smart-mirror.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'Impress Your Guests with QAIO',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'Equip your hotel for the future with QAIO\'s state-of-the-art features that are sure to captivate your guests. Seamlessly integrating with ProCentric and ProIdiom, QAIO ensures effortless compatibility with your existing systems.\n\nOur experience spans across the globe, having installed TV mirrors in numerous hotels worldwide. We are eager to collaborate on your next project! To learn more about QAIO\'s hospitality solutions, reach out to your local distributor or contact us at sales@evervue.com.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            HospitalityCarousel(media: customMedia)
          ]),
        ),
      ),
    );
  }
}
