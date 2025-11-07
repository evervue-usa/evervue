import 'package:flutter/material.dart';

class MediterraneanDesignPort extends StatelessWidget {
  final List<String> imageAssets = [
    'assets/deco_frames/med/sardinia.jpeg',
    'assets/deco_frames/med/pescara.jpg',
    'assets/deco_frames/med/sorento.jpg',
    'assets/deco_frames/med/valleta.jpg',
    'assets/deco_frames/med/qala.jpg',
    'assets/deco_frames/med/oliva.jpg',
  ];

  final List<String> imageTexts = [
    'SARDINIA',
    'PESCARA',
    'SORENTO',
    'VALLETA',
    'QALA',
    'OLIVA',
  ];

  final List<String> imageSubTexts = [
    'MED6',
    'MED7',
    'MED8',
    'MED9',
    'MED10',
    'MED11',
  ];

  MediterraneanDesignPort({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate the number of rows needed
    final numRows = (imageAssets.length / 2).ceil();

    return Center(
      child: Container(
        width: 350,
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Table(
          children: List.generate(
            numRows,
            (rowIndex) {
              return TableRow(
                children: [
                  for (int i = rowIndex * 2; i < (rowIndex * 2 + 2); i++)
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

class MediterraneanDesignLand extends StatelessWidget {
  final List<String> imageAssets = [
    'assets/deco_frames/med/sardinia.jpeg',
    'assets/deco_frames/med/pescara.jpg',
    'assets/deco_frames/med/sorento.jpg',
    'assets/deco_frames/med/valleta.jpg',
    'assets/deco_frames/med/qala.jpg',
    'assets/deco_frames/med/oliva.jpg',
  ];

  final List<String> imageTexts = [
    'SARDINIA',
    'PESCARA',
    'SORENTO',
    'VALLETA',
    'QALA',
    'OLIVA',
  ];

  final List<String> imageSubTexts = [
    'MED6',
    'MED7',
    'MED8',
    'MED9',
    'MED10',
    'MED11',
  ];

  MediterraneanDesignLand({super.key});

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
                                width: 180.0,
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
