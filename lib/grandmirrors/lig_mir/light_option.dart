import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LEDLight extends StatefulWidget {
  const LEDLight({super.key, required this.lightImages});
  final List<Map<String, String>> lightImages;

  @override
  State<LEDLight> createState() => _LEDLightState();
}

class _LEDLightState extends State<LEDLight> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              'Standard LED Light Options:',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(
            height: (screenHeight) * .20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: widget.lightImages.map((content) {
                return SizedBox(
                  width: (screenWidth - 50) * .24,
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
                          imageUrl: content['image']!),
                      Text(
                        content['light']!,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        content['model']!,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class PhilipsLEDLight extends StatefulWidget {
  const PhilipsLEDLight({super.key, required this.philipslightImages});
  final List<Map<String, String>> philipslightImages;

  @override
  State<PhilipsLEDLight> createState() => _PhilipsLEDLightState();
}

class _PhilipsLEDLightState extends State<PhilipsLEDLight> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              'Philips LED Light Options:',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(
            height: (screenHeight) * .20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: widget.philipslightImages.map((content) {
                return SizedBox(
                  width: (screenWidth - 50) * .24,
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
                          imageUrl: content['image']!),
                      Text(
                        content['light']!,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        content['model']!,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
