import 'package:flutter/material.dart';

class MosaicDesignPort extends StatelessWidget {
  final List<String> imageAssets = [
    'assets/deco_frames/mosaic/ancient.jpg',
    'assets/deco_frames/mosaic/black.jpg',
    'assets/deco_frames/mosaic/boracay.jpg',
    'assets/deco_frames/mosaic/desert.jpg',
    'assets/deco_frames/mosaic/greek.jpg',
    'assets/deco_frames/mosaic/siesta.jpg',
  ];

  final List<String> imageTexts = [
    'ANCIENT DESERT',
    'BLACK SEA',
    'BORACAY',
    'DESERT',
    'GREEK LIFE',
    'SIESTA',
  ];

  final List<String> imageSubTexts = [
    'STN15',
    'SEA07',
    'SEA06',
    'STN16',
    'STN10',
    'CLR08',
  ];

  MosaicDesignPort({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate the number of rows needed
    final numRows = (imageAssets.length / 2).ceil();

    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Table(
          children: List.generate(
            numRows,
            (rowIndex) {
              return TableRow(
                children: [
                  for (int i = rowIndex * 3; i < (rowIndex * 3 + 3); i++)
                    if (i < imageAssets.length)
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 25, 5, 5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xff939393),
                                  width: 0.5,
                                ),
                              ),
                              child: Image.asset(
                                imageAssets[i],
                                width: 150.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            imageTexts[i],
                            style: const TextStyle(
                              fontFamily: 'Century Gothic',
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            imageSubTexts[i],
                            style: const TextStyle(
                              fontFamily: 'Century Gothic',
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      )
                    else
                      Container(), // Empty cell for padding
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class MosaicDesignLand extends StatelessWidget {
  final List<String> imageAssets = [
    'assets/deco_frames/mosaic/ancient.jpg',
    'assets/deco_frames/mosaic/black.jpg',
    'assets/deco_frames/mosaic/boracay.jpg',
    'assets/deco_frames/mosaic/desert.jpg',
    'assets/deco_frames/mosaic/greek.jpg',
    'assets/deco_frames/mosaic/siesta.jpg',
  ];

  final List<String> imageTexts = [
    'ANCIENT DESERT',
    'BLACK SEA',
    'BORACAY',
    'DESERT',
    'GREEK LIFE',
    'SIESTA',
  ];

  final List<String> imageSubTexts = [
    'STN15',
    'SEA07',
    'SEA06',
    'STN16',
    'STN10',
    'CLR08',
  ];

  MosaicDesignLand({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate the number of rows needed
    final numRows = (imageAssets.length / 2).ceil();

    return Center(
      child: Container(
        width: 700,
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Table(
          children: List.generate(
            numRows,
            (rowIndex) {
              return TableRow(
                children: [
                  for (int i = rowIndex * 3; i < (rowIndex * 3 + 3); i++)
                    if (i < imageAssets.length)
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 25, 5, 5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xff939393),
                                  width: 0.5,
                                ),
                              ),
                              child: Image.asset(
                                imageAssets[i],
                                width: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            imageTexts[i],
                            style: const TextStyle(
                              fontFamily: 'Century Gothic',
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            imageSubTexts[i],
                            style: const TextStyle(
                              fontFamily: 'Century Gothic',
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      )
                    else
                      Container(), // Empty cell for padding
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(),
  );
}
