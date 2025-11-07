// ignore_for_file: strict_top_level_inference

import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageDisplay extends StatefulWidget {
  final String imageTitle;
  final List<String> imagePaths;
  final List<String> imageName;
  final List<String>? imageDescriptions;

  const ImageDisplay({
    super.key,
    required this.imageTitle,
    required this.imagePaths,
    required this.imageName,
    required this.imageDescriptions,
  });

  @override
  State<ImageDisplay> createState() => _ImageDisplayState();
}

class _ImageDisplayState extends State<ImageDisplay> {
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 600;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                        imageUrl: widget.imageTitle,
                        height: 55,
                      ),
                      const Divider(
                        height: 10,
                        indent: 15,
                        endIndent: 15,
                        thickness: 1,
                        color: Color(0xffC9B593),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Container(
                      alignment: AlignmentDirectional.topCenter,
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 20,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children:
                            widget.imagePaths.asMap().entries.map((entry) {
                          int index = entry.key;
                          String imagePath = entry.value;
                          return SizedBox(
                            width: ifScreen
                                ? screenWidth * 0.23
                                : screenWidth * 0.3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  imageUrl: imagePath,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  widget.imageName[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                if (widget.imageDescriptions != null &&
                                    widget.imageDescriptions!.isNotEmpty)
                                  if (widget
                                      .imageDescriptions![index].isNotEmpty)
                                    Text(widget.imageDescriptions![index]),
                              ],
                            ),
                          );
                        }).toList(),
                      )),
                )),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.fromLTRB(25, 0, 25, 15),
                        child: const Text(
                          'For the complete list of frames, you can view and download the PDF by clicking the button below.',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SpecsViewer(
                                        pdfTitle: 'Frames: PDF View',
                                        pdfSpecs:
                                            'assets/frames/Design-Collection-Frames-Lamps-Bulbs.pdf',
                                      )),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xffE0A957),
                            padding: const EdgeInsets.fromLTRB(50, 18, 50, 18),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: const Text(
                            'View Frames PDF',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 5,
              left: 15,
              right: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                  ),
                  FloatingActionButton.small(
                    elevation: 2,
                    shape: const CircleBorder(),
                    backgroundColor: Colors.transparent,
                    onPressed: _whatsApp,
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
                        imageUrl:
                            'https://www.evervue.com/evervue/assets/whatsapp.png'),
                  ),
                ],
              )),
        ],
      )),
    );
  }
}

Future<void> _whatsApp() async {
  const url = 'https://api.whatsapp.com/send?phone=19494414262';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
