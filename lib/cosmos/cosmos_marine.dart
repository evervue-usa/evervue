// ignore_for_file: must_be_immutable, unnecessary_string_interpolations
import 'package:cached_network_image/cached_network_image.dart';

import 'package:evervue/templates/image_slider.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CList {
  String title;
  String description;

  CList({required this.title, required this.description});
}

class CosmosMarine extends StatefulWidget {
  const CosmosMarine({super.key});

  @override
  State<CosmosMarine> createState() => _CosmosMarineState();
}

class _CosmosMarineState extends State<CosmosMarine> {
  List<String> neoprene = [
    'https://www.evervue.com/evervue/assets/beige-fabric-sunbrella-cover.jpg',
    'https://www.evervue.com/evervue/assets/black-fabric-outdoor-tv-cover.jpg',
    'https://www.evervue.com/evervue/assets/outdoor-tv-plain-blue-color-cover.jpg',
    'https://www.evervue.com/evervue/assets/plain-green-cover-for-exterior-tv.jpg',
    'https://www.evervue.com/evervue/assets/white-fabric-cover-for-outdoor-tv.jpg',
    'https://www.evervue.com/evervue/assets/camouflage-outdoor-tv-cover.jpg',
    'https://www.evervue.com/evervue/assets/white-yellow-stripes-fabric-cover.jpg',
    'https://www.evervue.com/evervue/assets/outdoor-tv-cover-white-green-stripes.jpg',
    'https://www.evervue.com/evervue/assets/red-green-stripe-cover-outdoor-tv.jpg',
    'https://www.evervue.com/evervue/assets/stripe-blue-cover-for-outdoor-tv.jpg',
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

  String defaultCOTitle = 'Android';
  String defaultCODescription =
      'We understand the important of the seamless integration of your favorite apps and streaming services in your TV viewing experience. Therefore, the Cosmos Marine 316 Stainless Steel TV fully supports Apple TV and Android devices.';

  List<CList> colist = [
    CList(
        title: 'Android',
        description:
            'We understand the important of the seamless integration of your favorite apps and streaming services in your TV viewing experience. Therefore, the Cosmos Marine 316 Stainless Steel TV fully supports Apple TV and Android devices.'),
    CList(
        title: 'Apple TV',
        description:
            'This means you have instant access to a universe of premium content, from the latest blockbusters on Netflix, the hottest shows on Apple TV+, to your favorite YouTube channels. Our TV enables you to navigate these platforms effortlessly, providing a streamlined and user-friendly experience.')
  ];

  String defaultMOTitle = 'Ceiling Mount';
  String defaultMODescription =
      'Save a space with our sleek and durable Ceiling Mount, an effortless installation solution for compact yacht layouts.';

  List<CList> clist = [
    CList(
        title: 'Ceiling Mount',
        description:
            'Save a space with our sleek and durable Ceiling Mount, an effortless installation solution for compact yacht layouts.'),
    CList(
        title: 'Ceiling Mount',
        description:
            'Save a space with our sleek and durable Ceiling Mount, an effortless installation solution for compact yacht layouts.'),
    CList(
        title: 'Wall Mount',
        description:
            'Secure and stylish, our stainless steel Wall Mount blends seamlessly with your yacht\'s interior, offering easy installation.'),
    CList(
        title: 'Wall Mount',
        description:
            'Secure and stylish, our stainless steel Wall Mount blends seamlessly with your yacht\'s interior, offering easy installation.'),
    CList(
        title: 'Floor Mount',
        description:
            'For unwavering strength, opt for our Permanent Mount. Easy to install, it provides a corrosion-resistant, permanent fixture for your TV.'),
    CList(
        title: 'Floor Mount',
        description:
            'For unwavering strength, opt for our Permanent Mount. Easy to install, it provides a corrosion-resistant, permanent fixture for your TV.')
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isScreen = screenWidth < 700;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 0),
                child: const ImageCarousel(
                  imagePaths: [
                    'https://www.evervue.com/evervue/assets/ceiling-mounted-cosmos-marine-outdoor-tv.jpg',
                    'assets/cosmos/resources/marine/brightness-sensor-cosmos-marine-outdoor-tv.mp4'
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Welcome to Cosmos Marine TV',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: const Text(
                          'Dive into an immersive viewing experience with Cosmos Marine TV, a brand synonymous with unparalleled luxury and technology, catering specifically to the demands of your opulent marine lifestyle. We proudly introduce our latest creation - the groundbreaking 316 Stainless Steel TV. Designed with precision and sophistication, this innovative product is built to enrich your sea-faring journeys and redefine onboard entertainment.\n\nJoin the Cosmos Marine TV family today and step into a world where luxury meets technology. Make every journey unforgettable with the 316 Stainless Steel TV. Your yacht deserves nothing less.',
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40, bottom: 25),
                      child: const Text(
                        'Meet Your Ultimate Sea Companion',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                        'Our 316 Stainless Steel TV is not just a TV; it\'s a statement of quality, robustness, and innovation. Designed specifically for yachts, this TV boasts a 316 stainless steel exterior, known for its extraordinary strength and corrosion resistance, even in the harshest sea environments.',
                        textAlign: TextAlign.left),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: SizedBox(
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
                            width: 300,
                            imageUrl:
                                'https://www.evervue.com/evervue/assets/polished-stainless-steel-cosmos-marine-outdoor-tv.jpg',
                            fit: BoxFit.cover,
                            alignment: Alignment.center),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Compatible Operating Systems',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
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
                      defaultCOTitle = colist[index].title;
                      defaultCODescription = colist[index].description;
                    });
                  },
                ),
                items: [
                  'https://www.evervue.com/evervue/assets/cosmos-marine-outdoor-tv-with-logitech-keyboard.jpg',
                  'https://www.evervue.com/evervue/assets/ceiling-mounted-cosmos-marine-apple-tv.jpg'
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
                          imageUrl: i,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 0),
                      child: Text(
                        defaultCOTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Text(
                        defaultCODescription,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40, bottom: 25),
                      child: const Text(
                        'Gaming Console Compatibility',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                        'For the gaming enthusiasts out there, you\'ll be thrilled to know that your Cosmos Marine TV is fully compatible with Xbox and PlayStation gaming consoles. Whether you\'re cruising through the Mediterranean or anchored off a Caribbean island, you can immerse yourself in your favorite games with unparalleled picture quality. Our TV provides an ultimate gaming experience, enabling vibrant graphics, smooth gameplay, and rapid response times.\n\nWith Cosmos Marine 316 Stainless Steel TV, every voyage becomes an opportunity for diverse entertainment, be it binge-watching your favorite series, streaming a new movie, or having a thrilling gaming session. The horizon of entertainment is vast and unending with Cosmos Marine TV.',
                        textAlign: TextAlign.left),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: SizedBox(
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
                                'https://www.evervue.com/evervue/assets/cosmos-marine-outdoor-tv-gaming-console.jpg',
                            fit: BoxFit.cover,
                            alignment: Alignment.center),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Tailor Your Entertainment Experience',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, bottom: 15),
                      child: const Text(
                          'At Cosmos Marine TV, we believe in providing a viewing experience that\'s tailored to your unique requirements. Hence, we offer our 316 Stainless Steel TV in a variety of sizes to perfectly fit the diverse spaces aboard your yacht.\n\nOur range includes:',
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/cosmos-marine-outdoor-stainless-steel-tv.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.center),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: const Text(
                          'Each of our TVs, regardless of size, delivers the same high-quality viewing experience and boasts a durable, corrosion-resistant 316 stainless steel body, proving that luxury and durability can co-exist beautifully.',
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40, bottom: 25),
                      child: const Text(
                        'Light Brightness Sensor',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                        'Our innovative light sensor system ensures that the television\'s brightness is perfectly optimized at all times. When daylight fades and darkness sets in, the light sensor detects the change and promptly dims the screen, providing a comfortable viewing experience without straining your eyes. This not only enhances your overall enjoyment but also contributes to significant energy savings of up to 65%.\n\nBy incorporating this intelligent feature, Cosmos Marine TVs allow you to make the most of the available power supply. Whether you\'re cruising on open waters or enjoying a relaxing evening on your yacht, you can rest assured that your entertainment needs are met without compromising energy resources.\n\nLight Brightness Sensor is a standard feature on all Cosmos Marine TVs.',
                        textAlign: TextAlign.left),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: const SizedBox(
                          child: VideoPlayerWidget(
                              source:
                                  'assets/cosmos/resources/marine/light-sensor-cosmos-marine-outdoor-tv.mp4')),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Making Every Voyage Smooth and Effortless',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: const Text(
                          'We at Cosmos Marine TV understand that your time on the yacht should be spent relishing the luxury and not dealing with complex installations. Therefore, we ensure that setting up your 316 Stainless Steel TV is as smooth and effortless as the sea breezes. To further enhance your experience, we offer high-quality 316 stainless steel mounts to complement your TV. These mounts are not only durable and corrosion-resistant but also designed to seamlessly blend with the aesthetics of your yacht.',
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Mounting Options',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                      defaultMOTitle = clist[index].title;
                      defaultMODescription = clist[index].description;
                    });
                  },
                ),
                items: [
                  'https://www.evervue.com/evervue/assets/cosmos-marine-outdoor-tv-ceiling-mounted.jpg',
                  'https://www.evervue.com/evervue/assets/cosmos-marine-outdoor-tv-stainless-steel.jpg',
                  'https://www.evervue.com/evervue/assets/wall-mount-cosmos-marine-outdoor-tv.jpg',
                  'https://www.evervue.com/evervue/assets/dining-table-with-outdoor-tv.jpg',
                  'https://www.evervue.com/evervue/assets/floor-mounted-cosmos-marine-outdoor-tv.jpg',
                  'https://www.evervue.com/evervue/assets/cosmos-marine-outdoor-tv-floor-mounted.jpg'
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
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 0),
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
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Immersive Sound, Enriching Experiences',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, bottom: 30),
                      child: const Text(
                          'A great viewing experience isn\'t complete without captivating sound. To take your onboard entertainment to the next level, Cosmos Marine 316 Stainless Steel TV proudly supports integration with Bose outdoor speakers.',
                          textAlign: TextAlign.left),
                    ),
                    const SizedBox(
                        child: VideoPlayerWidget(
                            source:
                                'assets/cosmos/resources/marine/outdoor-tv-with-bose-outdoor-speaker.mp4')),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Protect your Cosmos Marine TV with Sunbrella',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, bottom: 30),
                      child: const Text(
                          'We are proud to offer a wide selection of covers for your Cosmos Marine TV made from premium Sunbrella fabric. Sunbrella is renowned for its durability, fade resistance, and easy maintenance, making it ideal for marine conditions. The fabric is engineered to resist the harsh effects of sunlight, salt, and water, ensuring your TV cover looks stunning for years to come.',
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 25),
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
                              'https://www.evervue.com/evervue/assets/outdoor-tv-with-sunbrella-cover.jpg',
                          fit: BoxFit.cover,
                          alignment: Alignment.center),
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned.fill(
                          top: 9,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: double.infinity,
                              height: 2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
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
                                width: 250,
                                imageUrl:
                                    'https://www.evervue.com/evervue/assets/sunbrella-collection-logo.jpg',
                                fit: BoxFit.cover,
                                alignment: Alignment.center),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30, bottom: 30),
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: isScreen ? 400 : 800),
                        child: Wrap(
                          children: neoprene.map((i) {
                            return FractionallySizedBox(
                              widthFactor: isScreen ? 0.2 : 0.1,
                              child: Container(
                                margin: const EdgeInsets.all(5),
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
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
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
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/neoprene-cover-design.jpg',
                          fit: BoxFit.cover,
                          alignment: Alignment.center),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const Text(
                        'Unleash Premium Entertainment Beyond The Sea',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, bottom: 30),
                      child: const Text(
                          'Cosmos Marine\'s 316 Stainless Steel TV isn\'t confined to your yacht. It\'s equally suitable for your coastal properties, providing you with top-tier entertainment whether you\'re on the sea or by the shore.\n\nOur TV is built to withstand the rigors of coastal climates. The marine-grade 316 stainless steel body, renowned for its corrosion resistance, stands up to salty air, humidity, and high temperatures, characteristics of the coastal environment. Moreover, its modern, sleek design and advanced technology features make it a perfect addition to any coastal home, blending effortlessly with your interiors and offering an unparalleled viewing experience.\n\nWhether you\'re watching a sunset on your yacht or enjoying a movie night in your beach house, the Cosmos Marine 316 Stainless Steel TV ensures a premium entertainment experience. Its compatibility with various devices like Apple TV, Android devices, Xbox, PlayStation, and Bose outdoor speakers only enhances this experience, offering diverse entertainment options. With Cosmos Marine TV, you enjoy a seamless transition of luxury and convenience from your yacht to your coastal property.',
                          textAlign: TextAlign.left),
                    ),
                    Wrap(
                      children: [
                        FractionallySizedBox(
                          widthFactor: isScreen ? 1 : 0.5,
                          child: Container(
                            margin: isScreen
                                ? const EdgeInsets.only(top: 0)
                                : const EdgeInsets.only(right: 5),
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
                                  'https://www.evervue.com/evervue/assets/seaside-wall-mounted-cosmos-outdoor-tv.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: isScreen ? 1 : 0.5,
                          child: Container(
                            margin: isScreen
                                ? const EdgeInsets.only(top: 10)
                                : const EdgeInsets.only(left: 5),
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
                                  'https://www.evervue.com/evervue/assets/ocean-view-floor-mounted-outdoor-tv.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40, bottom: 30),
                      child: const Text(
                        'Behind the Brilliance: Exploring the Cosmos Marine TVs Backside',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
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
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          width: double.infinity,
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/cosmos-marine-tv-specifications-backview.jpg',
                          fit: BoxFit.cover,
                          alignment: Alignment.center),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SpecsViewer(
                                      pdfTitle: 'Mirror Specifications (PDF)',
                                      pdfSpecs:
                                          'assets/specification/cosmos-marine-specification-table.pdf',
                                    )),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          margin: const EdgeInsets.only(top: 20),
                          width: screenWidth,
                          color: const Color(0xff3171ed),
                          child: const Text(
                            'View Mirror Specifications',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
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
