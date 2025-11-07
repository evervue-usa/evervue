// ignore_for_file: must_be_immutable, unnecessary_string_interpolations
import 'package:cached_network_image/cached_network_image.dart';

import 'package:evervue/templates/image_slider.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PList {
  String title;
  String main;
  String thumb;

  PList({required this.title, required this.main, required this.thumb});
}

class CosmosOutdoor extends StatefulWidget {
  const CosmosOutdoor({super.key});

  @override
  State<CosmosOutdoor> createState() => _CosmosOutdoorState();
}

class _CosmosOutdoorState extends State<CosmosOutdoor> {
  List<PList> plist = [
    PList(
        title: 'Matte Black Stainless Steel',
        main:
            'https://www.evervue.com/evervue/assets/matte-black-outdoor-tv-frame.jpg',
        thumb:
            'https://www.evervue.com/evervue/assets/compact-matte-black-stainless-steel-outdoor-tv.jpg'),
    PList(
        title: 'Matte White Stainless Steel',
        main:
            'https://www.evervue.com/evervue/assets/outdoor-tv-frame-matte-white.jpg',
        thumb:
            'https://www.evervue.com/evervue/assets/snippet-matte-white-stainless-stell-frame.jpg'),
    PList(
        title: 'Matte Moss Green Stainless Steel',
        main:
            'https://www.evervue.com/evervue/assets/color-moss-green-frame-for-outdoor-tv.jpg',
        thumb:
            'https://www.evervue.com/evervue/assets/preview-of-green-outdoor-tv-frame.jpg'),
    PList(
        title: 'Brushed Stainless Steel',
        main:
            'https://www.evervue.com/evervue/assets/stainless-steel-frame-for-outdoor-tv.jpg',
        thumb:
            'https://www.evervue.com/evervue/assets/outdoor-tv-frame-made-of-stainless-steel.jpg')
  ];
  String defaultperfect =
      'https://www.evervue.com/evervue/assets/matte-black-outdoor-tv-frame.jpg';

  List<String> neoprene = [
    'https://www.evervue.com/evervue/assets/beige-fabric-sunbrella-cover.jpg',
    'https://www.evervue.com/evervue/assets/white-yellow-stripes-fabric-cover.jpg',
    'https://www.evervue.com/evervue/assets/white-fabric-cover-for-outdoor-tv.jpg',
    'https://www.evervue.com/evervue/assets/outdoor-tv-cover-white-green-stripes.jpg',
    'https://www.evervue.com/evervue/assets/red-green-stripe-cover-outdoor-tv.jpg',
    'https://www.evervue.com/evervue/assets/plain-green-cover-for-exterior-tv.jpg',
    'https://www.evervue.com/evervue/assets/camouflage-outdoor-tv-cover.jpg',
    'https://www.evervue.com/evervue/assets/outdoor-tv-plain-blue-color-cover.jpg',
    'https://www.evervue.com/evervue/assets/stripe-blue-cover-for-outdoor-tv.jpg',
    'https://www.evervue.com/evervue/assets/black-fabric-outdoor-tv-cover.jpg',
    'https://www.evervue.com/evervue/assets/sunbrella-black-for-outdoor-tv-fabric-cover.jpg',
    'https://www.evervue.com/evervue/assets/captain-navy-sunbrella-fabric-cover-tv.jpg',
    'https://www.evervue.com/evervue/assets/sunbrella-earthly-brown-cover-for-outdoor-tv.jpg',
    'https://www.evervue.com/evervue/assets/iridescent-pearl-sunbrella-outdoor-tv-cover.jpg',
    'https://www.evervue.com/evervue/assets/ivy-green-sunbrella-fabric-cover-for-outdoor-tv.jpg',
    'https://www.evervue.com/evervue/assets/sunbrella-pacific-blue-fabric-outdoor-tv-cover.jpg',
    'https://www.evervue.com/evervue/assets/pepperdust-outdoor-tv-fabric-sunbrella-cover.jpg',
    'https://www.evervue.com/evervue/assets/sandy-beige-sunbrella-cover-for-outdoor-tv.jpg',
    'https://www.evervue.com/evervue/assets/sun-burst-fabric-sunbrella-cover-for-exterior-tv.jpg',
    'https://www.evervue.com/evervue/assets/sunbrella-tor-red-for-outdoor-tv-fabric-cover.jpg',
  ];
  String defaultneo =
      'https://www.evervue.com/evervue/assets/beige-fabric-sunbrella-cover.jpg';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isScreen = screenWidth < 700;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                  child: VideoPlayerWidget(
                      source:
                          'assets/cosmos/resources/home/cosmos-outdoor-tv-by-evervue.mp4')),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 40),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'The All Round Cosmos Outdoor TV: Your Ultimate Entertainment Companion',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      'Transform your outdoor living space with the All Round Cosmos Outdoor TV.  Experience a new world of outdoor entertainment with the All Round Cosmos Outdoor TV. Combining durability, advanced technology, and an attractive design, this television is the perfect addition to your patio, backyard, or poolside retreat. Discover the ultimate outdoor viewing experience.',
                    ),
                    const SizedBox(height: 20),
                    const VideoPlayerWidget(
                        source:
                            'assets/cosmos/resources/home/cosmos-weather-resistant-smart-outdoor-tv.mp4'),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Discover the Ultimate Visual Experience with All Cosmos Outdoor TVs: Stunning Picture Quality from Dawn to Dusk',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, bottom: 30),
                      child: const Text(
                          'Every All Cosmos Outdoor TV is outfitted with a  4K Brightness Enhanced Panel boasting an impressive 700-nit brightness. Coupled with our specially designed non-glare glass, you can expect nothing short of extraordinary picture quality, regardless of the time of day.  (during sunny peak hours, the brightness can be less).\n\nFrom the first light of sunrise to the captivating hues of sunset, immerse yourself in vivid colors and crisp images that bring your favorite content to life. With All Cosmos Outdoor TVs, you\'ll never miss a moment of entertainment, whether you\'re watching a morning news show, enjoying a daytime sports event, or indulging in a movie night under the stars.',
                          textAlign: TextAlign.left),
                    ),
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
                      imageUrl:
                          'https://www.evervue.com/evervue/assets/sunbrite-skyvue-best-tv-for-outside.jpg',
                    )
                  ],
                ),
              ),
              const ImageCarousel(imagePaths: [
                'https://www.evervue.com/evervue/assets/best-smart-outdoor-tv-in-backyard.jpg',
                'https://www.evervue.com/evervue/assets/best-water-resistant-outdoor-tv-in-yacht.jpg',
                'https://www.evervue.com/evervue/assets/hot-tub-outdoor-tv-in-backyard-patio.jpg',
                'https://www.evervue.com/evervue/assets/next-level-entertainment-outoor-tv.jpg'
              ]),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Available in Sizes Ranging from 32" 4K UHD to the World\'s Largest 110" 4K UHD',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, bottom: 30),
                      child: const Text(
                          'Explore the limitless possibilities of outdoor entertainment with the Cosmos Outdoor TV, now available in a wide variety of sizes to suit your unique needs. Starting from a compact 32" 4K UHD display, perfect for intimate outdoor spaces, to the awe-inspiring 110" 4K UHD – the world\'s largest outdoor TV – you can find the perfect fit for your patio, backyard, or poolside oasis.\n\nNo matter which size you choose, each Cosmos Outdoor TV is designed to provide you with the ultimate entertainment experience. Don\'t compromise on style, performance, or scale – create the outdoor haven of your dreams with the Cosmos Outdoor TV, available in sizes from 32" 4K UHD to an unparallelled 110" 4K UHD.',
                          textAlign: TextAlign.left),
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
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          width: double.infinity,
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/cosmos-outdoor-tv-sizes-scaled.jpg',
                          fit: BoxFit.cover,
                          alignment: Alignment.center),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'A Perfect Match for Every Outdoor Space',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, bottom: 30),
                      child: const Text(
                          'The Cosmos Outdoor TV is not only a high-performance entertainment solution but also a versatile design element for your outdoor living area. Available in several stunning finishes, including brushed stainless steel, sleek black, lush green, and elegant soft white stainless steel, you can effortlessly blend your TV with your existing outdoor décor.\n\nWhether you prefer the classic appeal of brushed stainless steel, the modern sophistication of black, the vibrant touch of green, or the understated charm of soft white, the Cosmos Outdoor TV offers a finish that complements your style and enhances the ambiance of your outdoor space.',
                          textAlign: TextAlign.left),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                      child: SizedBox(
                        key: ValueKey<String>(defaultperfect),
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
                          imageUrl: defaultperfect,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 0),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 600),
                        child: Wrap(
                          children: plist.map((plist) {
                            return FractionallySizedBox(
                              widthFactor: 0.25,
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          defaultperfect = plist.main;
                                        });
                                      },
                                      child: CachedNetworkImage(
                                        placeholder: (context, url) =>
                                            const Text(
                                          'Loading assets...',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 168, 0, 0),
                                            fontSize: 16,
                                          ),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                        imageUrl: plist.thumb,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        plist.title,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: isScreen ? 12 : 14,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Engineered for Excellence and Durability in Both Residential and Commercial Settings',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, bottom: 30),
                      child: const Text(
                          'Introducing the Cosmos Outdoor TV – a testament to exceptional performance and enduring design, suitable for both residential and commercial use. Built with precision and care, this versatile outdoor television is the perfect solution for a wide array of settings, from luxurious backyard retreats to bustling commercial spaces.',
                          textAlign: TextAlign.left),
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
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          width: double.infinity,
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/wide-screen-best-smart-outdoor-tv.jpg',
                          fit: BoxFit.cover,
                          alignment: Alignment.center),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Explore the Versatile Stainless Steel Mounting Options for Cosmos Outdoor TVs: Enhance Your Viewing Experience',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: const Text(
                          'Cosmos Outdoor TV provides a diverse selection of stainless steel mounting options, designed to cater to your unique needs and preferences. With our range of sturdy and stylish mounting solutions, you can effortlessly integrate your Cosmos Outdoor TV into your outdoor space while ensuring optimal viewing angles and secure positioning.',
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: StaggeredGrid.count(
                        crossAxisCount: 6,
                        mainAxisSpacing: 3,
                        crossAxisSpacing: 3,
                        children: [
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 4,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffebebeb))),
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
                                    'https://www.evervue.com/evervue/assets/self-standing-mount-stainless-steel-outdoor-tv.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffebebeb))),
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
                                    'https://www.evervue.com/evervue/assets/hot-tub-mount-weather-resistant-tv.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffebebeb))),
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
                                    'https://www.evervue.com/evervue/assets/side-wall-mount-stainless-steel-for-outdoor-tv.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffebebeb))),
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
                                    'https://www.evervue.com/evervue/assets/ceiling-mount-outdoor-tv-stainless-steel-made.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffebebeb))),
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
                                    'https://www.evervue.com/evervue/assets/desk-mount-stainless-steel-for-weather-resistant-tv.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'SoundWave Outdoor Speakers in Stainless Steel',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: const Text(
                          'Elevate your outdoor entertainment experience with Cosmos Outdoor TV\'s optional SoundWave Outdoor Speakers, crafted from high-quality stainless steel. These weather-resistant speakers are designed to perfectly complement your Cosmos Outdoor TV, delivering crystal-clear sound and an immersive audio experience in any outdoor setting.\n\nThe stainless steel construction of the SoundWave Outdoor Speakers not only ensures durability but also adds a touch of sophistication to your outdoor space. Seamlessly integrating with your Cosmos Outdoor TV, these speakers complete your entertainment setup with style and unmatched performance.\n\nEnhance your outdoor audio experience with the optional SoundWave Outdoor Speakers from Cosmos Outdoor TV, and enjoy the perfect blend of exceptional sound quality and elegant design in stainless steel.',
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: isScreen ? 300 : 1000),
                        child: Wrap(
                          children: [
                            FractionallySizedBox(
                              widthFactor: isScreen ? 1 : 0.3333,
                              child: Container(
                                margin: isScreen
                                    ? const EdgeInsets.only(top: 0)
                                    : const EdgeInsets.only(left: 5, right: 5),
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
                                      imageUrl:
                                          'https://www.evervue.com/evervue/assets/soundwave-concert-outdoor-audio-system.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      color: const Color.fromRGBO(
                                          204, 204, 204, 1),
                                      child: const Text(
                                        'SoundWave Concert',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            FractionallySizedBox(
                              widthFactor: isScreen ? 1 : 0.3333,
                              child: Container(
                                margin: isScreen
                                    ? const EdgeInsets.only(top: 20)
                                    : const EdgeInsets.only(left: 5, right: 5),
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
                                      imageUrl:
                                          'https://www.evervue.com/evervue/assets/outdoor-audio-system-soundwave-theater.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      color: const Color.fromRGBO(
                                          204, 204, 204, 1),
                                      child: const Text(
                                        'SoundWave Theater',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            FractionallySizedBox(
                              widthFactor: isScreen ? 1 : 0.3333,
                              child: Container(
                                margin: isScreen
                                    ? const EdgeInsets.only(top: 20)
                                    : const EdgeInsets.only(left: 5, right: 5),
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
                                      imageUrl:
                                          'https://www.evervue.com/evervue/assets/cylinder-outdoor-speakers-soundwave.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      color: const Color.fromRGBO(
                                          204, 204, 204, 1),
                                      child: const Text(
                                        'SoundWave Cylinder',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Protect Your Cosmos Outdoor TV with High-Quality Neoprene Covers and Optional Sunbrella Fabric',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, bottom: 30),
                      child: const Text(
                          'Ensure your Cosmos Outdoor TV remains in pristine condition with our premium neoprene covers, specifically designed to safeguard your television against the elements. These high-quality covers provide an added layer of protection to prolong the life of your outdoor TV and maintain its optimal performance.\n\nFor those seeking an extra touch of style and luxury, Cosmos Outdoor TV also offers the option to upgrade to Sunbrella fabric. Renowned for its durability, fade resistance, and easy maintenance, Sunbrella fabric is the ideal choice for those looking to combine elegance with practicality.',
                          textAlign: TextAlign.left),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: SizedBox(
                        key: ValueKey<String>(defaultneo),
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
                          imageUrl: defaultneo,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: isScreen ? 400 : 800),
                        child: Wrap(
                          children: neoprene.map((i) {
                            return FractionallySizedBox(
                              widthFactor: isScreen ? 0.2 : 0.1,
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      defaultneo = '$i';
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
                                    imageUrl: i,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: const Text(
                        'Cosmos Outdoor TV: \nBest in Class with Built-in Android Smart TV and Compatibility with Apple TV and Other Set-Top Boxes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: const Text(
                          'Experience the ultimate in outdoor entertainment with the Cosmos Outdoor TV, which comes standard with the latest Android Smart TV functionality. Seamlessly access your favorite streaming platforms, apps, and more with the user-friendly interface and intuitive controls.\n\nFor those who prefer to use Apple TV or other set-top boxes, Cosmos Outdoor TV offers effortless compatibility, allowing you to connect your preferred device and enjoy a customized viewing experience. The versatile connectivity options ensure that your Cosmos Outdoor TV can adapt to your unique entertainment preferences.\n\nChoose the Cosmos Outdoor TV for a best-in-class entertainment solution that combines the convenience of built-in Android Smart TV capabilities with the flexibility to accommodate Apple TV and other set-top boxes. Enjoy a truly personalized outdoor viewing experience with the Cosmos Outdoor TV.',
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30, bottom: 5),
                      child:
                          const Text('NOW WITH', textAlign: TextAlign.center),
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
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          width: 280,
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/icon-google-assistant-for-smart-outdoor-tv.jpg',
                          alignment: Alignment.center),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 5),
                      child: const Text('&', textAlign: TextAlign.center),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
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
                              'https://www.evervue.com/evervue/assets/android-logo-for-outdoor-television.jpg',
                          alignment: Alignment.center),
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
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          width: double.infinity,
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/best-entertainment-smart-outdoor-tv.jpg',
                          fit: BoxFit.cover,
                          alignment: Alignment.center),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
