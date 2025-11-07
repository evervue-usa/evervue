import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ModelHospitality(),
        ),
      ),
    );
  }
}

class ModelHospitality extends StatefulWidget {
  const ModelHospitality({super.key});

  @override
  State<ModelHospitality> createState() => _ImageOptionsState();
}

class _ImageOptionsState extends State<ModelHospitality> {
  final List<String> optionImageAssetPaths = [
    'https://www.evervue.com/evervue/assets/product/hospitality/banner/06.jpg',
    'https://www.evervue.com/evervue/assets/product/hospitality/banner/05.jpg',
    'https://www.evervue.com/evervue/assets/product/hospitality/banner/02.jpg',
    'https://www.evervue.com/evervue/assets/product/hospitality/banner/07.jpg',
  ];

  final List<String> containerImageAssetPaths = [
    'https://www.evervue.com/evervue/assets/product/hospitality/banner/06.jpg',
    'https://www.evervue.com/evervue/assets/product/hospitality/banner/05.jpg',
    'https://www.evervue.com/evervue/assets/product/hospitality/banner/02.jpg',
    'https://www.evervue.com/evervue/assets/product/hospitality/banner/07.jpg',
  ];

  String selectedContainerImageAsset =
      'https://www.evervue.com/evervue/assets/product/hospitality/banner/06.jpg';

  void onImageOptionPressed(int index) {
    setState(() {
      selectedContainerImageAsset = containerImageAssetPaths[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                color: Colors.grey,
                blurRadius: 5,
              )
            ]),
            width: screenWidth * 0.8,
            child: CachedNetworkImage(
                placeholder: (context, url) => const Text(
                      'Loading assets...',
                      style: TextStyle(
                        color: Color.fromARGB(255, 168, 0, 0),
                        fontSize: 16,
                      ),
                    ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageUrl: selectedContainerImageAsset),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 8.0,
              children: List.generate(
                optionImageAssetPaths.length,
                (index) => GestureDetector(
                  onTap: () => onImageOptionPressed(index),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: screenWidth * 0.2,
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
                          imageUrl: optionImageAssetPaths[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
