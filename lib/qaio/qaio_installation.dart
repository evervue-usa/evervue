import 'package:evervue/templates/qaio_image_text.dart';
import 'package:flutter/material.dart';

class QAIOFlexInstallation extends StatefulWidget {
  const QAIOFlexInstallation({super.key});

  @override
  State<QAIOFlexInstallation> createState() => _QAIOFlexInstallationState();
}

class _QAIOFlexInstallationState extends State<QAIOFlexInstallation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: const Text(
              'QAIO Flex Installation: Streamlined Wall Mounting',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const QaioImageAndTextCarousel(
            imagePaths: [
              'https://www.evervue.com/evervue/assets/wall-mounted-qaio-flex-fitness-mirror.jpg',
              'https://www.evervue.com/evervue/assets/fitness-mirror-lean-on-mount.jpg',
              'https://www.evervue.com/evervue/assets/fitness-mirror-stand-alone-mount.jpg',
              'https://www.evervue.com/evervue/assets/ceiling-mounted-qaio-flex-fitness-mirror.jpg'
            ],
            titles: [
              'Wall Mount',
              'Lean On Mount',
              'Stand Alone Mount',
              'Ceiling Mount'
            ],
            descriptions: [
              'QAIO Flex can be placed securely on the wall for a space saving solution to any room. The aluminum profile around the mirror provides a beautiful “No Gap” wall mount. Installation is designed to be done under 30 minutes, so it\'s an easy set up to get your fitness routine started.',
              'The Lean On Mount allows you to add a sleek and sophisticated feel to any room. Casually angle your decorative fitness mirror against a wall and when the TV is turned off, watch as the monitor disappears completely from the glass leaving you with a beautiful decorative mirror.',
              'The QAIO Flex Stand-Alone Mount has a beautiful stainless-steel finish and can be moved around as needed. This stable floor stand is a great option for those who like to change up their fitness space from time to time.',
              'The ceiling mount gives a clean modern finish to your room, while firmly held in place with our strong mounting brackets. Comfortably work out, with a perfect vantage point from any angle.'
            ],
          ),
        ],
      ),
    ));
  }
}
