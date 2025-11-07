import 'package:flutter/material.dart';

class EtchDesignsPort extends StatelessWidget {
  final List<String> imageAssets = [
    'assets/deco_frames/etch/gatsby.jpeg',
    'assets/deco_frames/etch/nature.jpeg',
    'assets/deco_frames/etch/mandala.jpeg',
    'assets/deco_frames/etch/paisley.jpeg',
    'assets/deco_frames/etch/simple.jpeg',
    'assets/deco_frames/etch/geometrical.jpeg',
    'assets/deco_frames/etch/french.jpeg',
  ];

  EtchDesignsPort({super.key});

  @override
  Widget build(BuildContext context) {
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
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        imageAssets[i],
                        height: 190.0, // Adjust the height as needed
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

class EtchDesignsLand extends StatelessWidget {
  final List<String> imageAssets = [
    'assets/deco_frames/etch/gatsby.jpeg',
    'assets/deco_frames/etch/nature.jpeg',
    'assets/deco_frames/etch/mandala.jpeg',
    'assets/deco_frames/etch/paisley.jpeg',
    'assets/deco_frames/etch/simple.jpeg',
    'assets/deco_frames/etch/geometrical.jpeg',
    'assets/deco_frames/etch/french.jpeg',
  ];

  EtchDesignsLand({super.key});

  @override
  Widget build(BuildContext context) {
    final numRows = (imageAssets.length / 2).ceil();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Table(
        children: List.generate(
          numRows,
          (rowIndex) {
            return TableRow(
              children: [
                for (int i = rowIndex * 4; i < (rowIndex * 4 + 4); i++)
                  if (i < imageAssets.length)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Image.asset(
                        imageAssets[i],
                        height: 280.0, // Adjust the height as needed
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
