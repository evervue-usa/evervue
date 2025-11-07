import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class QaioImageSelector extends StatefulWidget {
  const QaioImageSelector({super.key, required this.smartWatch});

  final List<Map<String, String>> smartWatch;

  @override
  State<QaioImageSelector> createState() => _QaioImageSelectorState();
}

class _QaioImageSelectorState extends State<QaioImageSelector> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 600),
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: CachedNetworkImage(
              placeholder: (context, url) => const Text(
                'Loading assets...',
                style: TextStyle(
                  color: Color.fromARGB(255, 168, 0, 0),
                  fontSize: 16,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageUrl: widget.smartWatch[selectedIndex]['largeImage']!,
              key: ValueKey<int>(selectedIndex),
            ),
          ),
        ),
        SizedBox(
          width: 400,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: widget.smartWatch.asMap().entries.map((entry) {
              int idx = entry.key;
              Map<String, String> watch = entry.value;

              return InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = idx;
                  });
                },
                child: SizedBox(
                  width: 100,
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
                      imageUrl: watch['selection']!),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
