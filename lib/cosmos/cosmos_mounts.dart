import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';

class CosmosMountsPage extends StatefulWidget {
  const CosmosMountsPage(
      {super.key, required this.desc, required this.content});

  final int desc;
  final List<Map<String, dynamic>> content;

  @override
  State<CosmosMountsPage> createState() => _CosmosMountsPageState();
}

class _CosmosMountsPageState extends State<CosmosMountsPage> {
  List<String> icon = [
    'https://www.evervue.com/evervue/assets/mounts/outdoor-tv-protection-shield-icon.jpg',
    'https://www.evervue.com/evervue/assets/mounts/cable-management.jpg',
    'https://www.evervue.com/evervue/assets/mounts/Stability.jpg',
    'https://www.evervue.com/evervue/assets/mounts/Vesa-Compatible.jpg',
    'https://www.evervue.com/evervue/assets/mounts/secured-mount-outdoor-tv.jpg'
  ];
  List<String> title = [
    'Stainless Steel',
    'Cable Management',
    'Stability',
    'VESA Compatilbe',
    'Secured'
  ];
  List<String> description = [
    'Made of commercial grade stainless steel (S304), the mounts are almost indestructible, do not rust, are easy to clean and do not need maintenance.',
    'The power cable and HDMI cable (if used) are inside the tubes and well protected against weather and animals.',
    'Outdoor TVs are exposed to extreme conditions and it\'s very important to mount the TV well. This can only be achieved with carefully designed mounts and brackets.',
    'Cosmos Outdoor TV brackets and mounts are VESA compatible and therefore suitable for all TVs.',
    'Perfectly balanced mounts with sturdy and heavy base to assure perfect stand to withstand any harsh weather.'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool ifScreen = screenWidth > 700;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: ifScreen ? screenHeight * 0.4 : screenHeight * 0.45,
                child: CachedNetworkImage(
                  placeholder: (context, url) => const Text(
                    'Loading assets...',
                    style: TextStyle(
                      color: Color.fromARGB(255, 168, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl: widget.content[widget.desc]['banner']!,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 30),
                    child: Text(
                      widget.content[widget.desc]['title']!,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFCCCCCC))),
                        child: (widget.content[widget.desc]['images']
                                    [selectedIndex]
                                .endsWith('.mp4'))
                            ? VideoPlayerWidget(
                                source: widget.content[widget.desc]['images']
                                    [selectedIndex])
                            : CachedNetworkImage(
                                placeholder: (context, url) => const Text(
                                  'Loading assets...',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 168, 0, 0),
                                    fontSize: 16,
                                  ),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                imageUrl: widget.content[widget.desc]['images']
                                    [selectedIndex],
                                fit: BoxFit.cover,
                              )),
                  ),
                  Row(
                    children: [
                      for (var i = 0;
                          i <
                              (widget.content[widget.desc]['images'].length
                                  as int);
                          i++)
                        if ((widget.content[widget.desc]['images'].length
                                as int) !=
                            1)
                          Container(
                            width:
                                (MediaQuery.of(context).size.width - 100) / 5,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFF5e7a01))),
                            margin: i == 0
                                ? const EdgeInsets.only(left: 0)
                                : const EdgeInsets.only(left: 15),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = i;
                                });
                              },
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
                                imageUrl: widget.content[widget.desc]['images']
                                    [i],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        for (var i = 0;
                            i <
                                (widget.content[widget.desc]['description']
                                    .length as int);
                            i++)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('●', style: TextStyle(fontSize: 10)),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    widget.content[widget.desc]['description']
                                        [i],
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 10),
                    height: 1,
                    color: const Color(0xffcccccc),
                  ),
                  Wrap(
                    children: [
                      for (var i = 0;
                          i < widget.content[widget.desc]['com'].length;
                          i++)
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          width: (MediaQuery.of(context).size.width - 40) / 2,
                          child: Center(
                            child: Column(
                              children: [
                                Column(
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
                                      imageUrl: icon[widget.content[widget.desc]
                                          ['com'][i]],
                                      width: 50,
                                    ),
                                    const SizedBox(height: 15),
                                    Text(
                                      title[widget.content[widget.desc]['com']
                                          [i]],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      description[widget.content[widget.desc]
                                          ['com'][i]],
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        height: 1.5,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
