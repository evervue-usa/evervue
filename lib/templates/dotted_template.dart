import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/dotted_line_vertical.dart';
import 'package:flutter/material.dart';

class QaioDottedTemplate1 extends StatefulWidget {
  const QaioDottedTemplate1({super.key, required this.content});

  final List<Map<String, String>> content;

  @override
  State<QaioDottedTemplate1> createState() => _QaioDottedTemplate1State();
}

class _QaioDottedTemplate1State extends State<QaioDottedTemplate1> {
  final List<GlobalKey> _boxKeys = [];
  final List<double?> _boxHeights = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.content.length; i++) {
      _boxKeys.add(GlobalKey());
      _boxHeights.add(null);
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getHeights();
    });
  }

  void _getHeights() {
    for (int i = 0; i < _boxKeys.length; i++) {
      final RenderBox? renderBox =
          _boxKeys[i].currentContext?.findRenderObject() as RenderBox?;
      if (renderBox != null) {
        setState(() {
          _boxHeights[i] = renderBox.size.height;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 700;

    return Column(
      children: widget.content.asMap().entries.map((entry) {
        var index = entry.key;
        var item = entry.value;

        return Container(
          constraints: const BoxConstraints(maxWidth: 700),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                key: _boxKeys[index],
                width: ifScreen ? 700 - 140 : screenWidth - 140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      item['title']!,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      item['description']!,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 35),
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                height: _boxHeights[index] ?? 100.0,
                child: Stack(
                  children: [
                    if (index != widget.content.length - 1)
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        width: 100,
                        height: _boxHeights[index] ?? 100.0,
                        child: const VerticalDottedLine(),
                      ),
                    Positioned(
                      top: 0,
                      left: 20,
                      child: Container(
                        color: const Color(0xffc4c4c4),
                        padding: const EdgeInsets.all(25),
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
                            imageUrl: item['icon']!),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class QaioDottedTemplate2 extends StatefulWidget {
  const QaioDottedTemplate2({super.key, required this.content});

  final List<Map<String, String>> content;

  @override
  State<QaioDottedTemplate2> createState() => _QaioDottedTemplate2State();
}

class _QaioDottedTemplate2State extends State<QaioDottedTemplate2> {
  final List<GlobalKey> _boxKeys = [];
  final List<double?> _boxHeights = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.content.length; i++) {
      _boxKeys.add(GlobalKey());
      _boxHeights.add(null);
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getHeights();
    });
  }

  void _getHeights() {
    for (int i = 0; i < _boxKeys.length; i++) {
      final RenderBox? renderBox =
          _boxKeys[i].currentContext?.findRenderObject() as RenderBox?;
      if (renderBox != null) {
        setState(() {
          _boxHeights[i] = renderBox.size.height;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 700;

    return Column(
      children: widget.content.asMap().entries.map((entry) {
        var index = entry.key;
        var item = entry.value;

        return Container(
          constraints: const BoxConstraints(maxWidth: 700),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 100,
                height: _boxHeights[index] ?? 100.0,
                child: Stack(
                  children: [
                    if (index != widget.content.length - 1)
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        width: 100,
                        height: _boxHeights[index] ?? 100.0,
                        child: const VerticalDottedLine(),
                      ),
                    Positioned(
                      top: 0,
                      right: 20,
                      child: Container(
                        color: const Color(0xffc4c4c4),
                        padding: const EdgeInsets.all(25),
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
                            imageUrl: item['icon']!),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                key: _boxKeys[index],
                width: ifScreen ? 700 - 140 : screenWidth - 140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['title']!,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      item['description']!,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 35),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
