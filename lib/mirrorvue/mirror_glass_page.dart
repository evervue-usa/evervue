import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';

class MirrorGlassPage extends StatefulWidget {
  const MirrorGlassPage({super.key});

  @override
  State<MirrorGlassPage> createState() => _MirrorGlassPageState();
}

class _MirrorGlassPageState extends State<MirrorGlassPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool ifScreen = screenWidth > 700;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: ifScreen? Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Center(
              child: SizedBox(
                width: 700,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x50000000),
                                  blurRadius: 3,
                                  spreadRadius: 2)
                            ]),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        width: ((700 * 0.25) - 15),
                        child: Column(
                          children: [
                            const VideoPlayerWidget(
                              source:
                                  'assets/mirrorvue/resources/highlights/best-silver-glass-custom-Mirror-TV.mp4',
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                'Silver',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Century Gothic',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 15),
                              width: 50,
                              height: 2,
                              color: const Color(0xffc99e62),
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Experience complete vanishing technology as your television disappears entirely when turned off.',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Ideal for bathrooms, salons, makeup mirrors, restrooms, changing rooms, and dressing mirrors.',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x50000000),
                                  blurRadius: 3,
                                  spreadRadius: 2)
                            ]),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        width: ((700 * 0.25) - 15),
                        child: Column(
                          children: [
                            const VideoPlayerWidget(
                              source:
                                  'assets/mirrorvue/resources/highlights/advertising-mirrorvue-tv.mp4',
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                'Advertisement',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Century Gothic',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 15),
                              width: 50,
                              height: 2,
                              color: const Color(0xffc99e62),
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Perfect for commercial settings. The advertisement option ensures your TV vanishes completely when not in use.',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Suitable for stores, malls, elevators, point of sale displays, public areas, and restaurants.',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x50000000),
                                  blurRadius: 3,
                                  spreadRadius: 2)
                            ]),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        width: ((700 * 0.25) - 15),
                        child: Column(
                          children: [
                            const VideoPlayerWidget(
                              source:
                                  'assets/mirrorvue/resources/highlights/tinted-custom-glass-4k-Mirror-TV.mp4',
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                'Tinted',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Century Gothic',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 15),
                              width: 50,
                              height: 2,
                              color: const Color(0xffc99e62),
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Enjoy an 80% vanishing effect, making it a subtle choice for living rooms, bedrooms, home cinemas, and restaurants.',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x50000000),
                                  blurRadius: 3,
                                  spreadRadius: 2)
                            ]),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        width: ((700 * 0.25) - 15),
                        child: Column(
                          children: [
                            const VideoPlayerWidget(
                              source:
                                  'assets/mirrorvue/resources/highlights/black-glass-best-custom-Mirror-TV.mp4',
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                'Black',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Century Gothic',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 15),
                              width: 50,
                              height: 2,
                              color: const Color(0xffc99e62),
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'The non-vanishing mirror glass creates a striking visual effect in any setting ideal for special applications.',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 700,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x50000000),
                                  blurRadius: 3,
                                  spreadRadius: 2)
                            ]),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        width: ((700 * 0.25) - 15),
                        child: Column(
                          children: [
                            const VideoPlayerWidget(
                              source:
                                  'assets/mirrorvue/resources/highlights/bronze-glass-OLED-custom-TV.mp4',
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                'Bronze',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Century Gothic',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 15),
                              width: 50,
                              height: 2,
                              color: const Color(0xffc99e62),
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Add warmth and sophistication to your space with our non-vanishing bronze mirror glass, perfect for living rooms, restaurants, lobbies, and bedrooms.',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x50000000),
                                  blurRadius: 3,
                                  spreadRadius: 2)
                            ]),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        width: ((700 * 0.25) - 15),
                        child: Column(
                          children: [
                            const VideoPlayerWidget(
                              source:
                                  'assets/mirrorvue/resources/highlights/gold-OLED-custom-TV-Mirror.mp4',
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                'Gold',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Century Gothic',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 15),
                              width: 50,
                              height: 2,
                              color: const Color(0xffc99e62),
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Elevate your décor with our luxurious gold mirror television glass, suitable for living rooms, restaurants, lobbies, and bedrooms.',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'This non-vanishing option adds a touch of opulence to any environment.',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x50000000),
                                  blurRadius: 3,
                                  spreadRadius: 2)
                            ]),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        width: ((700 * 0.25) - 15),
                        child: Column(
                          children: [
                            const VideoPlayerWidget(
                              source:
                                  'assets/mirrorvue/resources/highlights/rose-gold-glass-custom-Mirror-TV.mp4',
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                'Rose Gold',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Century Gothic',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 15),
                              width: 50,
                              height: 2,
                              color: const Color(0xffc99e62),
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Embrace contemporary elegance with our rose gold mirror glass.',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Ideal for living rooms, restaurants, lobbies, and bedrooms, this non-vanishing option exudes a modern, refined aesthetic.',
                                    style: TextStyle(
                                        fontFamily: 'Century Gothic',
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        : Center(child:
        Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 5,
                children: [
                  SizedBox(
                    width: screenWidth - 40,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x50000000),
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ]),
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                            width: ((screenWidth * 0.5) - 40),
                            child: Column(
                              children: [
                                const VideoPlayerWidget(
                                  source:
                                      'assets/mirrorvue/resources/highlights/best-silver-glass-custom-Mirror-TV.mp4',
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    'Silver',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Century Gothic',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 15),
                                  width: 50,
                                  height: 2,
                                  color: const Color(0xffc99e62),
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Experience complete vanishing technology as your television disappears entirely when turned off.',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Ideal for bathrooms, salons, makeup mirrors, restrooms, changing rooms, and dressing mirrors.',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x50000000),
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ]),
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                            width: ((screenWidth * 0.5) - 40),
                            child: Column(
                              children: [
                                const VideoPlayerWidget(
                                  source:
                                      'assets/mirrorvue/resources/highlights/advertising-mirrorvue-tv.mp4',
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    'Advertisement',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Century Gothic',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 15),
                                  width: 50,
                                  height: 2,
                                  color: const Color(0xffc99e62),
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Perfect for commercial settings. The advertisement option ensures your TV vanishes completely when not in use.',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Suitable for stores, malls, elevators, point of sale displays, public areas, and restaurants.',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth - 40,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x50000000),
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ]),
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                            width: ((screenWidth * 0.5) - 40),
                            child: Column(
                              children: [
                                const VideoPlayerWidget(
                                  source:
                                      'assets/mirrorvue/resources/highlights/tinted-custom-glass-4k-Mirror-TV.mp4',
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    'Tinted',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Century Gothic',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 15),
                                  width: 50,
                                  height: 2,
                                  color: const Color(0xffc99e62),
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Enjoy an 80% vanishing effect, making it a subtle choice for living rooms, bedrooms, home cinemas, and restaurants.',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x50000000),
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ]),
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                            width: ((screenWidth * 0.5) - 40),
                            child: Column(
                              children: [
                                const VideoPlayerWidget(
                                  source:
                                      'assets/mirrorvue/resources/highlights/black-glass-best-custom-Mirror-TV.mp4',
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    'Black',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Century Gothic',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 15),
                                  width: 50,
                                  height: 2,
                                  color: const Color(0xffc99e62),
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'The non-vanishing mirror glass creates a striking visual effect in any setting ideal for special applications.',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 5,
                children: [
                  SizedBox(
                    width: screenWidth - 40,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x50000000),
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ]),
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                            width: ((screenWidth * 0.5) - 40),
                            child: Column(
                              children: [
                                const VideoPlayerWidget(
                                  source:
                                      'assets/mirrorvue/resources/highlights/bronze-glass-OLED-custom-TV.mp4',
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    'Bronze',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Century Gothic',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 15),
                                  width: 50,
                                  height: 2,
                                  color: const Color(0xffc99e62),
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Add warmth and sophistication to your space with our non-vanishing bronze mirror glass, perfect for living rooms, restaurants, lobbies, and bedrooms.',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x50000000),
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ]),
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                            width: ((screenWidth * 0.5) - 40),
                            child: Column(
                              children: [
                                const VideoPlayerWidget(
                                  source:
                                      'assets/mirrorvue/resources/highlights/gold-OLED-custom-TV-Mirror.mp4',
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    'Gold',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Century Gothic',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 15),
                                  width: 50,
                                  height: 2,
                                  color: const Color(0xffc99e62),
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Elevate your décor with our luxurious gold mirror television glass, suitable for living rooms, restaurants, lobbies, and bedrooms.',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'This non-vanishing option adds a touch of opulence to any environment.',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth - 40,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x50000000),
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ]),
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                            width: ((screenWidth * 0.5) - 40),
                            child: Column(
                              children: [
                                const VideoPlayerWidget(
                                  source:
                                      'assets/mirrorvue/resources/highlights/rose-gold-glass-custom-Mirror-TV.mp4',
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    'Rose Gold',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Century Gothic',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 15),
                                  width: 50,
                                  height: 2,
                                  color: const Color(0xffc99e62),
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Embrace contemporary elegance with our rose gold mirror glass.',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Ideal for living rooms, restaurants, lobbies, and bedrooms, this non-vanishing option exudes a modern, refined aesthetic.',
                                        style: TextStyle(
                                            fontFamily: 'Century Gothic',
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            width: ((screenWidth * 0.5) - 40),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
          ),
      ));
  }
}
