// ignore_for_file: must_be_immutable
import 'package:cached_network_image/cached_network_image.dart';

import 'package:evervue/templates/pdf_viewer.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';

class CosmosTechnology extends StatefulWidget {
  const CosmosTechnology({super.key});

  @override
  State<CosmosTechnology> createState() => _CosmosTechnologyState();
}

class _CosmosTechnologyState extends State<CosmosTechnology> {
  final List<Map<String, String>> proof = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/snowproof-cover-for-smart-outdoor-tv-compact.jpg',
      'title': 'Rain Proof'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/windproof-cover-for-outdoor-tv-snippet.jpg',
      'title': 'Wind Proof'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/snowproof-cover-for-smart-outdoor-tv-compact.jpg',
      'title': 'Snow Proof'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/sunproof-cover-for-outdoor-smart-tv.jpg',
      'title': 'Sun Proof'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/mold-mildew-resistant-for-outdoor-tv-icon.jpg',
      'title': 'Mold & Mildew Resistant'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/sunbrella-anti-glare-icon-for-outdoor-tv.jpg',
      'title': 'UV & Fade Resistant'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/easy-to-clean-icon-outdoor-tv.jpg',
      'title': 'Easy to Clean'
    },
  ];

  final List<Map<String, String>> compTable = [
    {
      'description1':
          'Powered by low 24 volts, Cosmos Outdoor TV is safe to use outdoors.',
      'image': 'https://www.evervue.com/evervue/assets/outdoor-tv.jpg',
      'description2':
          '110 to 240 volts on wet grass or near a pool can be dangerous.'
    },
    {
      'description1':
          'Equipped with high quality speakers and additional tweeters, Cosmos has an impressive audio.',
      'image': 'https://www.evervue.com/evervue/assets/compare-skyvue.jpg',
      'description2':
          'Check with vendor if the speakers are included and if there are tweeters installed. It makes big difference.'
    },
    {
      'description1':
          'Patented audio streamers are very efficient and direct the audio towards you.',
      'image': 'https://www.evervue.com/evervue/assets/compare-outdoor-tv.jpg',
      'description2':
          'No, sound is spread out which reduces the audio performance and quality.'
    },
    {
      'description1':
          'Patented weather cap protects Cosmos from the rain, snow, leaves and small animals which makes Cosmos the ultimate TV for outdoors.',
      'image':
          'https://www.evervue.com/evervue/assets/compare-outdoor-televisions.jpg',
      'description2': 'No, not available.'
    },
    {
      'description1':
          "All Cosmos Outdoor TVs are standard equipped with a fully automated heating and cooling system. Where ever you want to use Cosmos, it's ready.",
      'image': 'https://www.evervue.com/evervue/assets/sunbrite-skyvue.jpg',
      'description2':
          'No, only on the higher priced models, and often there is no heater installed that keeps the moisture out in the winter.'
    },
    {
      'description1':
          'Cosmos has often been recognized as the best design for Outdoor TVs.',
      'image': 'https://www.evervue.com/evervue/assets/sunbrite-skyvue-tv.jpg',
      'description2': '3” or more (for system with temperature control system).'
    },
    {
      'description1':
          'Cosmos has a Stainless Steel (S304) case and this makes the TV very strong, durable, and well protected.',
      'image': 'https://www.evervue.com/evervue/assets/skyvue-compare.jpg',
      'description2': 'No aluminum housing.'
    },
    {
      'description1':
          'With a bezel of only 0.6", Cosmos is the most versatile looking outdoor TV.',
      'image': 'https://www.evervue.com/evervue/assets/sunbrite-compared.jpg',
      'description2':
          '1 or 2” bezel give the TV an industrial, old fashioned look.'
    },
    {
      'description1':
          'Standard equipped with a real 4K resolution supporting the latest available Android version (may vary per market).',
      'image': 'https://www.evervue.com/evervue/assets/best-outdoor-tv.jpg',
      'description2':
          'Not included, or with a dongle that does not support 4K, or not equipped with sufficient processing speed for great performance.'
    },
    {
      'description1':
          'Update your Cosmos with the latest technology. Simply replace the Set Top Box and your Cosmos is as new again.',
      'image': 'https://www.evervue.com/evervue/assets/better-outdoor-tv.jpg',
      'description2':
          'No. Integrated Smart TV system make your TV old after a few years when better technology is available.'
    },
    {
      'description1':
          'Cosmos Outdoor TV offers high quality and beautifully made Neoprene covers in many styles. Also available in Sunbrella fabric.',
      'image':
          'https://www.evervue.com/evervue/assets/compare-all-weather-tv.jpg',
      'description2': 'No, usually a simple cover that does not really protect.'
    },
    {
      'description1':
          'Enjoy your hot tub in a whole new way with the Cosmos Hot Tub package.',
      'image': 'https://www.evervue.com/evervue/assets/TV-outdoor-compared.jpg',
      'description2': 'No, not available.'
    },
    {
      'description1':
          "Cosmos Outdoor TV comes standard with 20'/6 meters power cable and ready to use when it arrives.",
      'image':
          'https://www.evervue.com/evervue/assets/what-is-the-best-outdoor-tv.jpg',
      'description2':
          "Usually comes with a 5'/1.5 meter power cable and might need to buy extra power cable."
    },
    {
      'description1':
          'Complete your Outdoor TV experience with our Outdoor Audio systems.',
      'image':
          'https://www.evervue.com/evervue/assets/the-best-outdoor-audio.jpg',
      'description2': 'No, not available.'
    },
    {
      'description1':
          'Comes standard with a remote control with built in keyboard. Great for navigating the Smart TV applications.',
      'image': 'https://www.evervue.com/evervue/assets/outdoor-tv-zepp-remote-pro.png',
      'description2': 'No, and difficult to use the Smart TV applications.'
    },
    {
      'description1':
          'Cosmos Outdoor TV has a wide angle infrared receiver that separates it from regular indoor TVs.',
      'image': 'https://www.evervue.com/evervue/assets/better-outdoor-TV-2.jpg',
      'description2':
          'No, you need to stay in front of the TV to use the remote control.'
    },
    {
      'description1':
          'Cosmos offer many, high quality mounts to choose from. Extra stable to secure your Cosmos TV against wind, rain, animals.',
      'image': 'https://www.evervue.com/evervue/assets/stable-mount-tv.jpg',
      'description2':
          'No, usually residential quality brackets made of regular steel that can rust.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 700;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned.fill(
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/background-white-for-outdoor-tv.jpg',
                          fit: BoxFit.cover,
                          alignment: Alignment.center),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
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
                              width: 220,
                              imageUrl:
                                  'https://www.evervue.com/evervue/assets/cosmos-outdoor-logo-black.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 15, left: 20, right: 20),
                            child: const Text(
                              'Cosmos Outdoor TV',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 30),
                            child: const Text(
                              'The True Outdoor TV that is Built for Outdoors. Any Place, Any Time, Any Weather',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
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
                                width: 320,
                                imageUrl:
                                    'https://www.evervue.com/evervue/assets/best-outdoor-weather-resistant-tv.png',
                                fit: BoxFit.cover,
                                alignment: Alignment.center),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Cosmos Outdoor TV:\n The Ultimate Outdoor Television Designed for Any Place, Any Time, and Any Weather',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                        'Introducing the Cosmos Outdoor TV – the true outdoor television built to withstand the demands of any environment. Experience unparalleled entertainment in your backyard, patio, poolside, or any outdoor space, regardless of the weather conditions or time of day.'),
                    const SizedBox(height: 20),
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
                          'https://www.evervue.com/evervue/assets/cosmos-weather-resistant-tv.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Key Features:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        for (var feature in [
                          'Designed for the Outdoors: Cosmos Outdoor TV is specifically engineered to endure the elements, offering a weather-resistant construction that protects against rain, snow, dust, and insects. Enjoy worry-free entertainment, knowing your television is built for the outdoors.',
                          'Any Place: From cozy backyard nooks to expansive commercial spaces, Cosmos Outdoor TV seamlessly integrates into any outdoor setting, providing a versatile and stylish entertainment solution.',
                          'Any Time: With its high brightness display and exceptional picture quality, Cosmos Outdoor TV ensures optimal viewing at any time of day, whether it\'s a sunny afternoon or a moonlit night. (Cosmos has 700 nit panel. During sun peak hours the visibility may be less).',
                          'Any Weather: Cosmos Outdoor TV\'s rugged design ensures consistent performance in all weather conditions. From scorching heat to freezing cold, your television is ready to deliver the ultimate outdoor entertainment experience.',
                          'Upgrade your outdoor living space with the Cosmos Outdoor TV – the true outdoor television designed to perform in any place, any time, and any weather. Embrace the future of outdoor entertainment and experience the difference with Cosmos Outdoor TV.'
                        ])
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('●', style: TextStyle(fontSize: 10)),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    feature,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Cosmos Outdoor TV:\nThe All-Season Outdoor Television Engineered to Withstand the Elements',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Cosmos Outdoor TV, an all-season outdoor television designed to conquer the summer heat, resist the pouring rain, endure the blizzard cold, and stand up to heavy thunderstorms. Experience exceptional entertainment in any weather, as the Cosmos Outdoor TV is built to perform in all conditions, making it the ultimate choice for outdoor viewing.',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    VideoPlayerWidget(
                      source:
                          'assets/cosmos/resources/technology/all-weather-resist-outdoor-tv-withstand.mp4',
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Experience Seamless Entertainment with Fully Automatic Temperature Control',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        'The Cosmos Outdoor TV is expertly designed for use in any environment, thanks to its built-in automatic cooling and heating system. Simply plug in your TV, and the temperature control system will safeguard it in all weather conditions. Enjoy peace of mind and uninterrupted entertainment, as the fully automated system ensures optimal performance in temperatures ranging from -10 to +120 degrees Fahrenheit (-23 to +50 degrees Celsius).'),
                    const SizedBox(height: 20),
                    const VideoPlayerWidget(
                      source:
                          'assets/cosmos/resources/technology/heating-and-cooling-system.mp4',
                    ),
                    const Text(
                      'Key Features:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        for (var feature in [
                          'Automatic Temperature Control: The Cosmos Outdoor TV is equipped with a state-of-the-art temperature control system that automatically adjusts to protect your television in various weather conditions, allowing you to enjoy your favorite content worry-free.',
                          'Use Anywhere: Designed for versatility, the Cosmos Outdoor TV can be used in any location, making it the ideal choice for patios, backyards, poolside retreats, and even commercial settings.',
                          'All-Weather Protection: The Cosmos Outdoor TV is built to withstand extreme temperatures, from freezing cold to scorching heat, ensuring a reliable entertainment experience in any climate.',
                          'Any Weather: Cosmos Outdoor TV\'s rugged design ensures consistent performance in all weather conditions. From scorching heat to freezing cold, your television is ready to deliver the ultimate outdoor entertainment experience.',
                          'Choose the Cosmos Outdoor TV for a truly seamless outdoor viewing experience, complete with fully automatic temperature control that protects and optimizes your television, no matter the weather.'
                        ])
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('●', style: TextStyle(fontSize: 10)),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    feature,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Experience Unmatched Protection with Cosmos Outdoor TV\u0027s Patented Weather Cap',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        'The Cosmos Outdoor TV is equipped with a unique, removable weather cap that ensures reliable protection against various outdoor elements. Designed to shield your television from direct rain, harsh sunlight, dirt, and even curious animals, the patented weather cap significantly extends the lifespan of your outdoor TV.'),
                    const SizedBox(height: 20),
                    const VideoPlayerWidget(
                        source:
                            'assets/cosmos/resources/technology/exterior-tv-with-protective-cap.mp4'),
                    const SizedBox(height: 20),
                    const Text(
                      'Key Features:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        for (var feature in [
                          'Patented Weather Cap: The innovative, removable weather cap comes standard with every Cosmos Outdoor TV, providing an additional layer of defense against the elements.',
                          'Comprehensive Protection: The weather cap effectively safeguards your Cosmos Outdoor TV from rain, sun, dirt, and potential damage from animals, ensuring your television remains in pristine condition.',
                          'Extended Lifetime: By protecting your Cosmos Outdoor TV from various outdoor threats, the weather cap plays a crucial role in extending the overall lifespan and performance of your television.',
                        ])
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('●', style: TextStyle(fontSize: 10)),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    feature,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const Text(
                        'Invest in the Cosmos Outdoor TV and experience the benefits of the patented weather cap, designed to keep your television protected and functioning optimally in any outdoor environment. Enjoy peace of mind and exceptional entertainment with Cosmos Outdoor TV.'),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Experience Immersive Audio with Cosmos Outdoor TV\u0027s Patented Audio Streamers Patented Weather Cap',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        'Elevate your outdoor entertainment experience with Cosmos Outdoor TV\u0027s innovative, patented audio streamers. These advanced audio streamers are designed to direct sound towards the viewer, delivering exceptional audio quality without disturbing your neighbors.'),
                    const SizedBox(height: 20),
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
                            'https://www.evervue.com/evervue/assets/quality-audio-sound-of-outdoor-tv.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.center),
                    const SizedBox(height: 20),
                    const Text(
                      'Key Features:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        for (var feature in [
                          'Patented Audio Streamers: Cosmos Outdoor TV\u0027s unique audio streamers ensure a captivating and immersive listening experience, enhancing your outdoor television enjoyment.',
                          'Directed Sound: By focusing the sound towards the viewer, Cosmos Outdoor TV\u0027s audio streamers deliver clear, powerful audio without affecting your surroundings.',
                          'Ideal for Outdoor Environments: The patented audio streamers are essential for an optimal outdoor TV experience, allowing you to enjoy your favorite shows, movies, and sports events without causing noise disturbances.',
                        ])
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('●', style: TextStyle(fontSize: 10)),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    feature,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const VideoPlayerWidget(
                        source:
                            'assets/cosmos/resources/technology/sound-streamer-for-quality-audio.mp4'),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Cosmos Outdoor TV: Designed for Sunlight Readability',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        'Experience exceptional outdoor entertainment with the Cosmos Outdoor TV, specifically engineered for sunlight readability. Featuring a unique non-glare, heat-strengthened glass and high brightness 700nit 4K TV panels, the Cosmos Outdoor TV delivers outstanding picture quality, even on the sunniest of days.'),
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
                            'https://www.evervue.com/evervue/assets/smart-outdoor-tv-anti-glare.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.center),
                    const Text(
                      'Key Features:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        for (var feature in [
                          'Sunlight Ready: The Cosmos Outdoor TV is designed to provide an impressive viewing experience in bright outdoor conditions, ensuring you never miss a moment of your favorite content.',
                          'Non-Glare Glass: The special heat-strengthened, non-glare glass ensures optimal picture quality by reducing glare and reflections, allowing you to enjoy clear, vivid images on sunny days.',
                          'High Brightness 4K Panels: With its high brightness 700nit 4K TV panels, the Cosmos Outdoor TV delivers stunning visuals and vibrant colors, providing an unparalleled outdoor viewing experience.',
                          'Choose the Cosmos Outdoor TV for a sunlight-ready entertainment solution that delivers exceptional picture quality in any outdoor setting. Enjoy your favorite shows, movies, and sports events in brilliant clarity and detail, even on the sunniest days, with Cosmos Outdoor TV.'
                        ])
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('●', style: TextStyle(fontSize: 10)),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    feature,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const Text(
                        'When the TV is located in direct sunlight, visibility can be less at certain times of the day.'),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Experience the World\u0027s Safest Outdoor TV with Cosmos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        'Discover the unparalleled safety of Cosmos Outdoor TV, designed to provide worry-free entertainment in any outdoor environment. Powered by a 24-volt system, Cosmos Outdoor TV eliminates the concerns associated with using 110 or 230-volt TVs near wet grass, pools, or hot tubs.'),
                    const SizedBox(height: 20),
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
                          'https://www.evervue.com/evervue/assets/safest-outdoor-quality-tv.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Key Features:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        for (var feature in [
                          'World\u0027s Safest Outdoor TV: Cosmos Outdoor TV offers unparalleled safety by operating on a 24-volt system, ensuring secure entertainment in various outdoor settings.',
                          'Worry-Free Entertainment: Enjoy your favorite content without the concerns associated with higher voltage TV\u0027s in damp or wet areas, making Cosmos Outdoor TV the perfect choice for poolside or hot tub locations.',
                          'Versatile Use: The safe and efficient design of Cosmos Outdoor TV allows for versatile placement and usage, providing exceptional entertainment options for your patio, backyard, or any outdoor space.',
                        ])
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('●', style: TextStyle(fontSize: 10)),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    feature,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const Text(
                        'Choose Cosmos Outdoor TV for the world\u0027s safest outdoor television experience. Embrace a worry-free entertainment solution designed to ensure your safety, without compromising on performance or quality, with Cosmos Outdoor TV.'),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Exceptional Smart Capabilities and Apple TV Compatibility',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        'Experience the versatility and intelligence of Cosmos Outdoor TV, equipped with the latest Android version available for your region. Simply connect to your Wi-Fi, install your favorite apps, and even enjoy Live TV streaming directly to your Cosmos Outdoor TV. Plus, Cosmos Outdoor TV is fully compatible with Apple TV, ensuring seamless integration with your preferred streaming devices.'),
                    Center(
                      child: Transform.scale(
                        scale: 0.7,
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
                              'https://www.evervue.com/evervue/assets/android-outdoor-tv-water-resistant.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Key Features:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        for (var feature in [
                          'Smart Functionality: Cosmos Outdoor TV comes standard with the most up-to-date Android version, offering a user-friendly interface and access to a wide range of apps and streaming services.',
                          'Apple TV Compatibility: For those who prefer Apple TV, Cosmos Outdoor TV ensures effortless compatibility, allowing you to enjoy a customized viewing experience that meets your unique entertainment needs.',
                          'Wi-Fi Connectivity: Easily connect your Cosmos Outdoor TV to Wi-Fi and access a world of content, from popular streaming platforms to live TV, at your fingertips.'
                        ])
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('●', style: TextStyle(fontSize: 10)),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    feature,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
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
                          'https://www.evervue.com/evervue/assets/best-outdoor-tv-for-all-weather-type.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Cosmos Outdoor TV: Game Ready for an Unparalleled Experience',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        'Elevate your gaming experience with Cosmos Outdoor TV, designed to bring your favorite games to life in stunning 4K resolution. The anti-glare screen and high-quality audio streamers ensure an immersive, top-notch gaming experience in any outdoor setting.'),
                    const SizedBox(height: 20),
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
                          'https://www.evervue.com/evervue/assets/group-people-intertainment-gaming.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Key Features:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        for (var feature in [
                          'Resolution: Enjoy your favorite games in breathtaking detail with Cosmos Outdoor TV\u0027s 4K resolution, providing crisp and vivid visuals that enhance your gaming adventure.',
                          'Anti-Glare Screen: The Cosmos Outdoor TV features a specially designed anti-glare screen, ensuring optimal picture quality and minimal reflections, so you can stay fully immersed in your game, even on sunny days',
                          'High-Quality Audio Streamers: The patented audio streamers deliver clear, powerful sound directly to you, taking your gaming experience to new heights and ensuring you don\u0027t miss a single audio cue.',
                        ])
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('●', style: TextStyle(fontSize: 10)),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    feature,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const Text(
                        'Transform your outdoor gaming sessions with the Cosmos Outdoor TV, offering the perfect combination of stunning visuals, immersive audio, and game-ready features. Level up your gaming experience in style with Cosmos Outdoor TV.'),
                    Center(
                      child: Transform.scale(
                        scale: 0.7,
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
                              'https://www.evervue.com/evervue/assets/gaming-experience.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Introducing the Versatile Zepp Remote',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Navigate the online world effortlessly with the unique Zepp Remote, featuring an integrated keyboard for ease of use. Designed with convenience in mind, the Zepp Remote comes complete with a water-resistant skin and a holder equipped with suction cups, allowing you to attach it to almost any surface.',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
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
                          'https://www.evervue.com/evervue/assets/cosmos-zepp-remote.png',
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Experience Effortless Voice Control with Cosmos Outdoor TV',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Century Gothic',
                          height: 1.5,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  "Cosmos Outdoor TV comes standard with Google Assistant integration, offering convenient voice control through the Zepp remote's built-in microphone. Simply say  "),
                          TextSpan(
                            text: "'OK Google'",
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 15),
                          ),
                          TextSpan(
                              text:
                                  "  followed by your command, whether you're looking for the latest news, continuing your favorite TV show, or requesting some relaxing music."),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
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
                          'https://www.evervue.com/evervue/assets/smart-google-assistant-voice-control.jpg',
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'A 360° View of Cosmos',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Explore a comprehensive 360° view of the Cosmos Outdoor TV, showcasing its expert engineering and exceptional design. Built to perform in any outdoor setting, Cosmos delivers an unparalleled entertainment experience that's both visually stunning and highly functional.",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const VideoPlayerWidget(
                      source:
                          'assets/cosmos/resources/technology/picture-quality-and-cool-outdoor-television.mp4',
                    ),
                    const SizedBox(height: 20),
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
                          'https://www.evervue.com/evervue/assets/cosmos-outdoor-tvs-better.jpg',
                    ),
                    const SizedBox(height: 20),
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
                          'https://www.evervue.com/evervue/assets/back-side-outdoor-tv.jpg',
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Discover the Exclusive Set Top Box Compartment in Cosmos Outdoor TV',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Cosmos Outdoor TV features a one-of-a-kind integrated set top box compartment, allowing you to conveniently store devices such as Android TV, Apple TV, or other set top boxes. With the flexibility to easily upgrade your system after a few years, your Cosmos Outdoor TV will feel as good as new, ensuring lasting entertainment value.",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    VideoPlayerWidget(
                      source:
                          'assets/cosmos/resources/technology/picture-quality-and-cool-outdoor-television.mp4',
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Experience Unmatched Resin Protection with Cosmos Outdoor TV',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Cosmos Outdoor TV employs a superior resin film to safeguard its components, effectively preventing damage from dirt and moisture typically found in other electronics. This advanced protection technique is also utilized in military and aviation applications, ensuring the highest level of durability.",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
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
                          'https://www.evervue.com/evervue/assets/waterproof-outdoor-tv.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        "Experience Premium Protection with Cosmos Outdoor TV's High-Quality Neoprene Cover",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        'Safeguard your TV with the high-quality neoprene cover designed for Cosmos Outdoor TV. Providing effective insulation against rain, snow, and dirt, the cover also reduces significant temperature fluctuations when exposed to sunlight, significantly extending the lifetime of your TV. Available in a wide range of designs, colors, and Sunbrella fabric options, the Cosmos Neoprene cover offers both style and durability.'),
                    const SizedBox(height: 20),
                    const Text(
                      'Key Features:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        for (var feature in [
                          'Superior Insulation: The high-quality neoprene cover offers excellent protection against rain, snow, and dirt, ensuring your TV remains in pristine condition.',
                          'Temperature Regulation: By reducing temperature fluctuations when exposed to sunlight, the Cosmos Neoprene cover helps extend the lifespan of your outdoor TV.',
                          'Customizable Design: Choose from a variety of designs, colors, and Sunbrella fabric options to find the perfect neoprene cover that suits your taste and complements your outdoor space.',
                        ])
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('●', style: TextStyle(fontSize: 10)),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    feature,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const Text(
                        'Invest in a Cosmos Neoprene cover to protect your outdoor TV from the elements while enhancing its longevity. Experience the perfect blend of style, function, and durability with Cosmos Outdoor TV\'s high-quality neoprene cover.'),
                  ],
                ),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: proof.map((index) {
                  return SizedBox(
                      width: ifScreen ? 110 : 120,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
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
                                imageUrl: index['image']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              index['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Color(0xffbdbec0)),
                            ),
                          ],
                        ),
                      ));
                }).toList(),
              ),
              const SizedBox(height: 20),
              CachedNetworkImage(
                placeholder: (context, url) => const Text(
                  'Loading assets...',
                  style: TextStyle(
                    color: Color.fromARGB(255, 168, 0, 0),
                    fontSize: 16,
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageUrl:
                    'https://www.evervue.com/evervue/assets/neoprene-cover-tv.jpg',
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 768),
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        "Comparison Table",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'COSMOS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'OTHER OUTDOOR TV',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      children: compTable.map((index) {
                        return SizedBox(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(230, 230, 230, 1)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(5, 5, 0, 5),
                                      child: Text(
                                        index['description1']!,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: ifScreen
                                                ? 14
                                                : screenWidth * 0.02),
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Transform.scale(
                                      scale: 0.7,
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
                                        imageUrl: index['image']!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 5, 5),
                                      child: Text(
                                        index['description2']!,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: ifScreen
                                                ? 14
                                                : screenWidth * 0.02),
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SpecsViewer(
                                      pdfTitle: 'Mirror Specifications (PDF)',
                                      pdfSpecs:
                                          'assets/specification/cosmos-outdoor-specification-table.pdf',
                                    )),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          margin: const EdgeInsets.only(top: 20),
                          width: screenWidth,
                          color: const Color(0xff5e7a01),
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
