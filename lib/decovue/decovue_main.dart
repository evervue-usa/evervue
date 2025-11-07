// ignore_for_file: must_be_immutable, unnecessary_string_interpolations

import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/templates/custom_slider.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CList {
  String title;
  String description;

  CList({required this.title, required this.description});
}

class DecoVueHomePage extends StatefulWidget {
  const DecoVueHomePage({super.key});

  @override
  State<DecoVueHomePage> createState() => _DecoVueHomePageState();
}

class _DecoVueHomePageState extends State<DecoVueHomePage> {
  String defaultOSTitle = 'Apple TV';
  String defaultOSDescription =
      'DecoVue TV experience is made better through its integration with Apple.';

  List<CList> clist = [
    CList(
        title: 'Apple TV',
        description:
            'DecoVue TV experience is made better through its integration with Apple.'),
    CList(
        title: 'Android',
        description:
            'Android improves DecoVue TV with apps, streaming, games, and social media. East-to-use OS integrates with smart devices for better viewing.'),
    CList(
        title: 'Roku TV',
        description:
            'Roku is great for DecoVue TV with streaming services, easy interface, and casting from mobile devices.'),
    CList(
        title: 'Google TV',
        description:
            'Google TV presents an innovative approach to DecoVue TV, seamlessly merging streaming services, apps, and live TV within a cohesive interface.')
  ];

  List<CList> molist = [
    CList(
        title: 'VESA Compatible',
        description: 'VESA compatible mount for easy installation.'),
    CList(
        title: 'Hang-on-the-wall',
        description:
            'Hang your DecoVue to the wall and watch your space come to life.'),
    CList(
        title: 'Lean-on-Wall',
        description:
            'With its strong frame, you can easily lean it against the wall. This is a great option for public places and stores.'),
    CList(
        title: 'Desk Stand',
        description:
            'With the strong desk stand, your DecoVue is stable and completely safe to watch TV in your living room. '),
    CList(
        title: 'Invisible Power Cable',
        description:
            'With the invisible cable, you will not see the power cable and your DecoVue will become the conversation piece everybody will be talking about.')
  ];

  String defaultMOTitle = 'VESA Compatible';
  String defaultMODescription = 'VESA compatible mount for easy installation.';

  final List<String> mediaList = [
    'assets/decovue/resources/highlights/wall-mount-solution.mp4',
    'assets/decovue/resources/highlights/flat-wall-mount-solution.mp4',
    'https://www.evervue.com/evervue/assets/mirror-tv-leaning-on-the-wall.jpg',
    'https://www.evervue.com/evervue/assets/desk-mounted-frameless-mirror-tv.jpg',
    'https://www.evervue.com/evervue/assets/frameless-desk-mount-mirror-tv.jpg',
    'assets/decovue/resources/highlights/modern-mirror-tv-power-cable.mp4'
  ];

  final List<Map<String, String>> decoFrames = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/mediterranean-frame-mirror.jpg',
      'title': 'MEDITERRANEAN\nFRAMES'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/mosaic-frame-for-unique-mirror.jpg',
      'title': 'MOSAIC\nFRAMES'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/native-looking-bamboo-frame-mirror.jpg',
      'title': 'BAMBOO\nFRAMES'
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/rattan-frame-mirror.jpg',
      'title': 'RATTAN\nFRAMES'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool ifScreen = screenWidth < 600;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                viewportFraction: 1,
                enlargeCenterPage: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
              ),
              items: [
                'https://www.evervue.com/evervue/assets/decovue-aluminum-gold-mirror-tv.jpg',
                'https://www.evervue.com/evervue/assets/decovue-cacolo-framed-tv.jpg',
                'https://www.evervue.com/evervue/assets/decovue-carabia-framed-tv.jpg',
                'https://www.evervue.com/evervue/assets/decovue-chiwan-framed-tv.jpg',
                'https://www.evervue.com/evervue/assets/decovue-colina-framed-tv.jpg',
                'https://www.evervue.com/evervue/assets/decovue-colon-framed-tv.jpg',
                'https://www.evervue.com/evervue/assets/decovue-herlev-framed-tv.jpg',
                'https://www.evervue.com/evervue/assets/decovue-kilkis-framed-tv.jpg',
                'https://www.evervue.com/evervue/assets/decovue-kribi-framed-tv.jpg'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return SizedBox(
                      width: double.infinity,
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
                        imageUrl: '$i',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'DECOVUE: THE FRAMED MIRROR TV',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 2,
                    color: const Color(0xffE8AC11),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'DecoVue is a custom framed mirror TV that enhances your viewing experience with stylish frame designs that complement your home decor.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'It adds elegance and luxury to any room by transforming into a stunning mirror when the TV is off.\n\nDecoVue brings both beauty and functionality to your home with its unique feature that doubles as a high performance 4K OLED TV and a beautiful mirror, sure to impress guests and spark conversations.\n\nChoose from a range of mirror TV sizes, up to 110”, to find the perfect fit for your home.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: const CustomCarousel(
                imagePaths: [
                  'https://www.evervue.com/evervue/assets/boca-black-mirror-frame-design.jpg',
                  'https://www.evervue.com/evervue/assets/barika-gold-frame-mirror-tv.jpg',
                  'https://www.evervue.com/evervue/assets/bibala-silver-frame-mirror-tv.jpg',
                  'https://www.evervue.com/evervue/assets/kiruna-frame-design-mirror-tv.jpg',
                  'https://www.evervue.com/evervue/assets/karis-wood-framed-mirror-tv.jpg'
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'UNIQUE MIRROR TV DESIGNS',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 2,
                    color: const Color(0xffE8AC11),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'DecoVue offers a wide range of dynamic frames that cater to a variety of styles, from modern to classic impressions.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'The selection includes iconic designer frames and superb wooden frames, making it easy to find a frame that aligns perfectly with your unique needs and preferences. With DecoVue\'s range of customizable options, you can enjoy a viewing experience that\'s tailored to your personal tastes and home decor.\n\nWhether you prefer a sleek and modern aesthetic or a more traditional and timeless look, DecoVue has a frame for everyone.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: const CustomCarousel(
                imagePaths: [
                  'https://www.evervue.com/evervue/assets/black-frames-in-mobile.jpg',
                  'https://www.evervue.com/evervue/assets/mobile-of-white-frames.jpg',
                  'https://www.evervue.com/evervue/assets/black-colored-vauci-frames-mobile.jpg',
                  'https://www.evervue.com/evervue/assets/brown-colored-vauci-frames-mobile.jpg',
                  'https://www.evervue.com/evervue/assets/mobile-of-gold-renaissance-frame.jpg',
                  'https://www.evervue.com/evervue/assets/mobile-of-mosaic-frames-mirror-tv.jpg',
                  'https://www.evervue.com/evervue/assets/mediterranean-frames-mirror-tv-mobile.jpg',
                  'https://www.evervue.com/evervue/assets/gold-frame-mirror-mobile.jpg'
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'DECOVUE HAS PARTNERED WITH VAUCI',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 2,
                    color: const Color(0xffE8AC11),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'DecoVue\'s partnership with Milan-based Vauci adds a touch of Italian craftsmanship and expertise to its top-line handmade leather frames, elevating their already impressive range.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'With Vauci\'s involvement, DecoVue has elevated its frames to the status of a masterpiece, where creativity is expertly combined with a well-worked presentation. Experience the best of both worlds and revel in the beauty and sophistication that comes with a DecoVue TV framed by a Vauci handmade leather frame.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: const CustomCarousel(
                imagePaths: [
                  'https://www.evervue.com/evervue/assets/framed-vauci-mirror-tv.jpg',
                  'https://www.evervue.com/evervue/assets/vauci-framed-mirror-tv.jpg',
                  'assets/decovue/resources/highlights/smart-mirror-framed-tv.mp4',
                  'https://www.evervue.com/evervue/assets/smart-framed-tv-living-room.jpg',
                  'assets/decovue/resources/highlights/framed-tv-vauci-mirror.mp4',
                  'https://www.evervue.com/evervue/assets/toffee-framed-vauci-mirror-tv.jpg'
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'DECOVUE WITH STAINLESS STEEL',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 2,
                    color: const Color(0xffE8AC11),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'DecoVue\'s stainless steel frames offer a sleek and modern alternative, elevating your viewing experience with their glossy feel and touch.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'DecoVue\'s frames come in 2", 3", and 4" widths with a 2" breadth, creating a seamless and polished look that enhances any room. Ideal for embellishing your living space, bedroom, or any area in your home.\n\nChoose between a brushed finish or a polished touch to personalize your TV and entrench your style.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: const CustomCarousel(
                imagePaths: [
                  'https://www.evervue.com/evervue/assets/stainless-steel-framed-mirror-tv.jpg',
                  'https://www.evervue.com/evervue/assets/framed-stainless-steel-mirror-tv.jpg',
                  'assets/decovue/resources/highlights/cool-smart-framed-mirror-tv.mp4',
                  'https://www.evervue.com/evervue/assets/decovue-framed-mirror-tv.jpg',
                  'https://www.evervue.com/evervue/assets/picture-quality-tv.jpg'
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'DECOVUE RENAISSANCE',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 2,
                    color: const Color(0xffE8AC11),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'Transform your home into a reflection of artistic splendor with DecoVue\'s Renaissance-inspired frames.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'Enhance your 4K TV display with classic style frames in elegant finishes and carved wood, suitable for any decorative style.\n\nDisplay your unique style with pride in your home, restaurant, retail, or office space using the elegant and eclectic DecoVue Renaissance collection.\n\nElevate your unique style in your home, restaurant, retail, or office space with DecoVue Renaissance\'s elegant and eclectic collection.\n\nOrder now to enjoy the timeless beauty of DecoVue Renaissance frames in your space, with delivery taking 4-6 weeks for the highest level of craftsmanship and quality.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: const CustomCarousel(
                imagePaths: [
                  'https://www.evervue.com/evervue/assets/renaissance-framed-mirror-tv.jpg',
                  'https://www.evervue.com/evervue/assets/wall-mounted-framed-mirror-tv.jpg',
                  'https://www.evervue.com/evervue/assets/white-renaissance-tv-frame.jpg',
                  'https://www.evervue.com/evervue/assets/renaissance-salara-silver-frame-design.jpg',
                  'https://www.evervue.com/evervue/assets/golden-renaissance-framed-mirror-tv.jpg',
                  'https://www.evervue.com/evervue/assets/renaissance-gairo-silver-framed-mirror-tv.jpg'
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'DECOVUE FRAMELESS',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 2,
                    color: const Color(0xffE8AC11),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'DecoVue Frameless represents the pinnacle of technology and beauty combined in one sleek and innovative mirror TV.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'This powerful twist to the DecoVue experience features a front panel made entirely of glass, giving the TV a cool and modern look that stands out from the crowd. The beauty and sophistication of DecoVue Frameless is simply world-class, offering an unrivaled viewing experience that enhances any space. Discover the future of television design and experience the magic of DecoVue Frameless today.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: const CustomCarousel(
                imagePaths: [
                  'assets/decovue/resources/highlights/glass-mirror-tv.mp4',
                  'assets/decovue/resources/highlights/frameless-desk-stand-mirror-design.mp4',
                  'assets/decovue/resources/highlights/wall-mounted-smart-mirror-tv.mp4',
                  'assets/decovue/resources/highlights/frameless-smart-mirror-tv-design.mp4',
                  'assets/decovue/resources/highlights/wall-mount-frameless-smart-tv.mp4'
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Wrap(
                  spacing: 15,
                  runSpacing: 25,
                  children: decoFrames.map((entry) {
                    return SizedBox(
                      width: ifScreen
                          ? (screenWidth / 2) - 30
                          : (screenWidth / 4) - 25,
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
                              imageUrl: entry['image']!,
                              alignment: Alignment.center),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              entry['title']!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList()),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'OPERATING SYSTEMS',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 2,
                    color: const Color(0xffE8AC11),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.9 / 1,
                viewportFraction: 0.7,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                onPageChanged: (index, reason) {
                  setState(() {
                    defaultOSTitle = clist[index].title;
                    defaultOSDescription = clist[index].description;
                  });
                },
              ),
              items: [
                'https://www.evervue.com/evervue/assets/golden-frame-mirror-tv-with-remote.jpg',
                'https://www.evervue.com/evervue/assets/smart-golden-frame-mirror-with-keyboard.jpg',
                'https://www.evervue.com/evervue/assets/golden-frame-roku-voice-remote-control.jpg',
                'https://www.evervue.com/evervue/assets/golden-frame-with-chromecast-remote-control.jpg'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
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
                        imageUrl: '$i',
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    child: Text(
                      defaultOSTitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Text(
                      defaultOSDescription,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: CachedNetworkImage(
                  placeholder: (context, url) => const Text(
                        'Loading assets...',
                        style: TextStyle(
                          color: Color.fromARGB(255, 168, 0, 0),
                          fontSize: 16,
                        ),
                      ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  width: double.infinity,
                  imageUrl: ifScreen
                      ? 'https://www.evervue.com/evervue/assets/golden-framed-mirror-tv.jpg'
                      : 'https://www.evervue.com/evervue/assets/4k-resolution-logo-framed-mirror-tv.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'DECOVUE OLED',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 2,
                    color: const Color(0xffE8AC11),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'Experience stunning colors, unbeatable contrast, and exceptional energy efficiency with OLED technology. Say goodbye to dull, lifeless images and hello to vibrant, eye-catching visuals that truly pop. Upgrade your TV and elevate your viewing experience with DecoVue framed mirror TV! Available for DecoVue framed mirror TV sizes 55” and 65”.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
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
                        width: double.infinity,
                        imageUrl:
                            'https://www.evervue.com/evervue/assets/wooden-wall-framed-mirror-tv.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.center),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'TOUCHSCREEN',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 2,
                    color: const Color(0xffE8AC11),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'DecoVue offers the option to incorporate a top-of-the-line touchscreen, making it an excellent solution for stores to showcase their product line. With the touchscreen feature, customers can interact with the products and explore their features and benefits in a highly engaging and interactive way. Whether you\'re running a retail store, showroom, or exhibition, DecoVue\'s touchscreen technology is an innovative and effective tool to enhance your product demonstrations and engage your customers. (This feature is optional and only available with Android Operating System)',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
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
                        width: double.infinity,
                        imageUrl:
                            'https://www.evervue.com/evervue/assets/framed-mirror-tv-silver-mounted.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.center),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
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
                        width: 280,
                        imageUrl:
                            'https://www.evervue.com/evervue/assets/mirror-feeds-icon.png',
                        alignment: Alignment.center),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'Mirror Feeds is an intelligent and free application designed exclusively for your DecoVue. With this app, you can effortlessly stay informed and up-to-date with the latest trends and developments in various fields, including business, entertainment, health, science, and technology. Whether you\'re looking to monitor stocks and currencies, check the weather in your current location, or customize your news feed layout, Mirror Feeds has got you covered. Plus, its sleek and user-friendly interface ensures a seamless experience every time. With Mirror Feeds, you can unlock the full potential of your DecoVue and take your smart TV experience to the next level.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
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
                        width: double.infinity,
                        imageUrl:
                            'https://www.evervue.com/evervue/assets/framed-golden-smart-mirror-tv.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.center),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'FRONT VIEW',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
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
                            'https://www.evervue.com/evervue/assets/mirror-tv-with-wooden-design.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.center),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'BACK VIEW',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
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
                        imageUrl: ifScreen
                            ? 'https://www.evervue.com/evervue/assets/speakers-parts-and-label-backview.jpg'
                            : 'https://www.evervue.com/evervue/assets/decovue-specs-back-view.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.center),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'CHOOSE YOUR TV SIZE',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 2,
                    color: const Color(0xffE8AC11),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'DecoVue enhances your entertainment experience with stunning picture quality and sleek design that fits any space.\n\nOur framed mirror TVs come in sizes from 40" to 110", ensuring that you find the perfect fit for your home or office.\n\nWhether you need a cozy screen for your bedroom or a massive display for your living room, DecoVue has got you covered.\n\nTrust us to deliver high-quality viewing experience no matter which size you choose.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
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
                        width: double.infinity,
                        imageUrl:
                            'https://www.evervue.com/evervue/assets/framed-mirror-tv-sizes-collection.png',
                        fit: BoxFit.cover,
                        alignment: Alignment.center),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text(
                      'MOUNTING OPTIONS',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 2,
                    color: const Color(0xffE8AC11),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.9 / 1,
                viewportFraction: 0.7,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                onPageChanged: (index, reason) {
                  setState(() {
                    if (index >= 0 && index < molist.length) {
                      defaultMOTitle = molist[index].title;
                      defaultMODescription = molist[index].description;
                    }
                  });
                },
              ),
              items: mediaList.map((media) {
                if (media.endsWith('.mp4')) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: AspectRatio(
                      aspectRatio: 1.9 / 1,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: VideoPlayerWidget(source: media),
                      ),
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: AspectRatio(
                      aspectRatio: 1.9 / 1,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const Text(
                            'Loading assets...',
                            style: TextStyle(
                              color: Color.fromARGB(255, 168, 0, 0),
                              fontSize: 16,
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl: media,
                        ),
                      ),
                    ),
                  );
                }
              }).toList(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    child: Text(
                      defaultMOTitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Text(
                      defaultMODescription,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpecsViewer(
                              pdfTitle: 'Mirror Specifications (PDF)',
                              pdfSpecs:
                                  'assets/specification/decovue-specification-table.pdf',
                            )),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  width: screenWidth,
                  color: Colors.amber,
                  child: const Text(
                    'View Mirror Specifications',
                    textAlign: TextAlign.center,
                  ),
                )),
            const SizedBox(
              height: 30,
            )
          ]),
        ),
      ),
    );
  }
}
