import 'package:flutter/material.dart';

class AmbianceGalleryPort extends StatelessWidget {
  final List<String> imageAssets = [
    'assets/deco_frames/ambiance/capriola.jpg',
    'assets/deco_frames/ambiance/casazza.jpg',
    'assets/deco_frames/ambiance/ferrone.jpg',
    'assets/deco_frames/ambiance/formina.jpg',
    'assets/deco_frames/ambiance/giano.jpg',
    'assets/deco_frames/ambiance/mascioni.jpg',
    'assets/deco_frames/ambiance/pavana.jpg',
    'assets/deco_frames/ambiance/ribolla.jpg',
    'assets/deco_frames/ambiance/terzo.jpg',
    'assets/deco_frames/ambiance/vigasio.jpg',
  ];

  AmbianceGalleryPort({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate the number of rows needed
    final numRows = (imageAssets.length / 2).ceil();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Table(
        children: List.generate(
          numRows,
          (rowIndex) {
            return TableRow(
              children: [
                for (int i = rowIndex * 2; i < (rowIndex * 2 + 2); i++)
                  if (i < imageAssets.length)
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        imageAssets[i],
                        width: 150.0, // Adjust the width as needed
                        height: 150.0, // Adjust the height as needed
                      ),
                    )
                  else
                    Container(), // Empty cell for padding
              ],
            );
          },
        ),
      ),
    );
  }
}

class AmbianceGalleryLand extends StatelessWidget {
  final List<String> imageAssets = [
    'assets/deco_frames/ambiance/capriola.jpg',
    'assets/deco_frames/ambiance/casazza.jpg',
    'assets/deco_frames/ambiance/ferrone.jpg',
    'assets/deco_frames/ambiance/formina.jpg',
    'assets/deco_frames/ambiance/giano.jpg',
    'assets/deco_frames/ambiance/mascioni.jpg',
    'assets/deco_frames/ambiance/pavana.jpg',
    'assets/deco_frames/ambiance/ribolla.jpg',
    'assets/deco_frames/ambiance/terzo.jpg',
    'assets/deco_frames/ambiance/vigasio.jpg',
  ];

  AmbianceGalleryLand({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate the number of rows needed
    final numRows = (imageAssets.length / 2).ceil();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Table(
        children: List.generate(
          numRows,
          (rowIndex) {
            return TableRow(
              children: [
                for (int i = rowIndex * 3; i < (rowIndex * 3 + 3); i++)
                  if (i < imageAssets.length)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Image.asset(
                        imageAssets[i],
                        width: 200.0, // Adjust the width as needed
                        height: 200.0, // Adjust the height as needed
                      ),
                    )
                  else
                    Container(), // Empty cell for padding
              ],
            );
          },
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
