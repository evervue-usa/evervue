import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class QAIOFlexSizes extends StatefulWidget {
  const QAIOFlexSizes({super.key});

  @override
  State<QAIOFlexSizes> createState() => _QAIOFlexSizesState();
}

class _QAIOFlexSizesState extends State<QAIOFlexSizes> {
  int selectedIndex = 0;

  final List<Map<String, String>> qaioSize = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/22-inch-width-fitness-mirror-tv.jpg',
      'size': 'STANDARD'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/29-inch-width-intelligent-fitness-mirror.jpg',
      'size': 'ACTIVE'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/40-inch-width-smart-fitness-mirror.jpg',
      'size': 'LIMITLESS'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'QAIO Flex Sizes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: SizedBox(
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
                      imageUrl: qaioSize[selectedIndex]['image']!),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: qaioSize.asMap().entries.map((entry) {
                  int idx = entry.key;
                  var item = entry.value;

                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = idx;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: selectedIndex == idx
                                ? const Color(0xff00aeef)
                                : Colors.transparent,
                          ),
                        ),
                      ),
                      child: Text(
                        item['size']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
