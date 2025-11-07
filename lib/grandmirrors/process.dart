import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProcessPage extends StatefulWidget {
  const ProcessPage({super.key});

  @override
  State<ProcessPage> createState() => _ProcessSectionState();
}

class _ProcessSectionState extends State<ProcessPage> {
  int currentIndex = 0;

  final List<String> imageAssetPaths = [
    'https://www.evervue.com/evervue/assets/1.jpg',
    'https://www.evervue.com/evervue/assets/2.png',
    'https://www.evervue.com/evervue/assets/3.jpg',
    'https://www.evervue.com/evervue/assets/4.jpg',
    'https://www.evervue.com/evervue/assets/5.jpg',
  ];

  final List<Map<String, String>> processSteps = [
    {
      'step': 'Step One: Measure',
      'title': 'Measure the desired mirror size',
      'description':
          'To begin, we need the exact dimensions of the replacement mirror you\'d like to purchase, such as 60.27 inches by 38.12 inches (1530 millimeters by 968 millimeters). We use a CNC machine-controlled cutting process to create highly precise mirrors. Additionally, you may request irregular shapes, such as a cutout in the mirror to accommodate a sink faucet. Provide your specifications, and we can craft any shape you desire. You can send us an AutoCAD file, create a sketch, or make a paper template.',
    },
    {
      'step': 'Step Two: Select Mirror Type',
      'title': 'Choose the Mirror Type',
      'description':
          'Grand Mirrors offers a wide variety of mirror options, all customizable to your desired dimensions. First, select the type of mirror that best suits your needs, then explore the available personalized adjustments. We offer numerous premium features like defoggers and motion sensors that activate bathroom lights when someone enters.',
    },
    {
      'step': 'Step Three: Quotation',
      'title': 'Receive Your Quote',
      'description':
          'Once we have your order details, we\'ll provide you with a custom quote for all associated costs. The mirror ships complete with everything you need. We\'ll also send you a pre-production sketch to ensure your mirror meets your specifications.',
    },
    {
      'step': 'Step Four: Review',
      'title': 'Review All of the Details',
      'description':
          'Review all the specifications for your new mirror. It\'s highly recommended to remeasure and double-check the sizes, options, and specifications before manufacturing begins. Contact us if any changes are needed, or if everything looks correct, we\'ll send you the final production drawing and invoice to sign before starting production.',
    },
    {
      'step': 'Step Five: Ship',
      'title': 'Place Your Order',
      'description':
          'Production of your custom mirror typically takes about three to four weeks, but we can often expedite the process for an additional cost if necessary. We adhere to the industry\'s strictest quality control standards during manufacturing to ensure the highest possible quality. For shipping mirrors, we work exclusively with carefully vetted, highly specialized, and well-established transportation providers. Once your order is packaged and shipped, we\'ll provide you with a tracking number or shipping reference, and you can contact the shipping company directly to arrange a delivery time.',
    },
  ];

  void nextStep() {
    setState(() {
      if (currentIndex < (processSteps.length - 1)) {
        if (currentIndex < (imageAssetPaths.length - 1)) {
          currentIndex++;
        }
      }
    });
  }

  void previousStep() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentStep = processSteps[currentIndex];
    final currentImg = imageAssetPaths[currentIndex];

    return Center(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            color: const Color(0xff413831),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: previousStep,
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  color: currentIndex > 0 ? Colors.white : Colors.grey,
                ),
                Text(
                  currentStep['step']!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: nextStep,
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  color: currentIndex < 4 ? Colors.white : Colors.grey,
                ),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 8.5 / 5.9,
            child: CachedNetworkImage(
              placeholder: (context, url) => const Text(
                'Loading assets...',
                style: TextStyle(
                  color: Color.fromARGB(255, 168, 0, 0),
                  fontSize: 16,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageUrl: currentImg,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: const Color(0xfff5f4f2),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    currentStep['title']!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  currentStep['description']!,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
