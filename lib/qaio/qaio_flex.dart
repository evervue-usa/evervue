import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/qaio/qaio_installation.dart';

import 'package:evervue/templates/application_slider.dart';
import 'package:evervue/templates/qaio_image_select.dart';
import 'package:evervue/templates/pdf_viewer.dart';
import 'package:evervue/templates/video_player.dart';
import 'package:flutter/material.dart';

class QaioFlexPage extends StatefulWidget {
  const QaioFlexPage({super.key});

  @override
  State<QaioFlexPage> createState() => _QaioFlexPageState();
}

class _QaioFlexPageState extends State<QaioFlexPage> {
  final List<String> imageSelect = [
    'https://www.evervue.com/evervue/assets/woman-dancing-ballet-with-fitness-mirror.jpg',
    'https://www.evervue.com/evervue/assets/fitness-mirror-with-woman-dancing-ballet.jpg',
    'https://www.evervue.com/evervue/assets/man-watching-videos-in-fitness-mirror.jpg'
  ];

  final List<Map<String, String>> flexLogo = [
    {
      'link': 'play.google.com/store/apps/details?id=com.nike.ntc',
      'image':
          'https://www.evervue.com/evervue/assets/nike-training-club-fitness-application-logo.jpg'
    },
    {
      'link':
          'play.google.com/store/apps/details?id=com.beachbody.mychallengetracker',
      'image':
          'https://www.evervue.com/evervue/assets/logo-of-beachbody-fitness-application.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=com.pumapumatrac',
      'image':
          'https://www.evervue.com/evervue/assets/pumatrac-fitness-applicaiton-logo.jpg'
    },
    {
      'link':
          'play.google.com/store/apps/details?id=homeworkout.homeworkouts.noequipment',
      'image':
          'https://www.evervue.com/evervue/assets/home-workout-no-equipment-logo.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=com.classpass.classpass',
      'image':
          'https://www.evervue.com/evervue/assets/classpass-fitness-application-logo.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=com.freeletics.lite',
      'image':
          'https://www.evervue.com/evervue/assets/logo-of-freeletics-fitness-application.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=com.bcs.treadmilltrails',
      'image':
          'https://www.evervue.com/evervue/assets/treadmill-trails-fitness-application-logo.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=com.aaptiv.android',
      'image':
          'https://www.evervue.com/evervue/assets/logo-of-aaptiv-fitness-application.jpg'
    },
    {
      'link':
          'play.google.com/store/apps/details?id=com.gaiam.yogastudio&hl=en',
      'image':
          'https://www.evervue.com/evervue/assets/yoga-studio-fitness-application-logo.jpg'
    },
    {
      'link':
          'play.google.com/store/apps/details?id=com.mapmyfitness.android2&hl=en',
      'image':
          'https://www.evervue.com/evervue/assets/under-armour-record-fitness-application-logo.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=sworkitapp.sworkit.com',
      'image':
          'https://www.evervue.com/evervue/assets/logo-of-sworkit-fitness-application.jpg'
    },
    {
      'link':
          'play.google.com/store/apps/details?id=com.tinymission.dailybuttworkoutfree',
      'image':
          'https://www.evervue.com/evervue/assets/daily-butt-workout-application-logo.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=com.pearsports.cast&hl=en',
      'image':
          'https://www.evervue.com/evervue/assets/pear-application-logo-for-samsung.jpg'
    },
    {
      'link':
          'play.google.com/store/apps/details?id=com.flatironssoftware.sugarwod',
      'image':
          'https://www.evervue.com/evervue/assets/sugarwod-fitness-application-logo.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=com.fitifyapps.bwcardio',
      'image':
          'https://www.evervue.com/evervue/assets/logo-of-hiit-and-cardio-application.jpg'
    },
    {
      'link':
          'play.google.com/store/apps/details?id=com.fitnesskeeper.asicsstudio&hl=en',
      'image':
          'https://www.evervue.com/evervue/assets/logo-of-asics-studio-fitness-application.jpg'
    },
    {
      'link':
          'play.google.com/store/apps/details?id=com.leafcutterstudios.yayog',
      'image':
          'https://www.evervue.com/evervue/assets/fitness-applicaiton-yayog-logo.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=us.throwdown.keelo',
      'image':
          'https://www.evervue.com/evervue/assets/keelo-fitness-application-logo.jpg'
    },
    {
      'link':
          'play.google.com/store/apps/details?id=com.netpulse.mobile.goldsgymmypath&hl=en',
      'image':
          'https://www.evervue.com/evervue/assets/logo-of-gold-gym-fitness-application.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=com.health.workout',
      'image':
          'https://www.evervue.com/evervue/assets/twelve-minute-athlete-application-logo.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=je.fit',
      'image': 'https://www.evervue.com/evervue/assets/jefit-logo.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=com.toneitup.android',
      'image':
          'https://www.evervue.com/evervue/assets/tone-it-up-fitness-application-logo.jpg'
    },
    {
      'link':
          'play.google.com/store/apps/details?id=com.runtastic.android&hl=en',
      'image': 'https://www.evervue.com/evervue/assets/runtastic-logo.jpg'
    },
    {
      'link': 'play.google.com/store/apps/details?id=com.downdogapp',
      'image':
          'https://www.evervue.com/evervue/assets/logo-of-down-dog-fitness-application.jpg'
    },
    {
      'link':
          'play.google.com/store/apps/details?id=com.tinymission.dailylegworkoutfree',
      'image':
          'https://www.evervue.com/evervue/assets/daily-leg-workout-application-logo.jpg'
    },
  ];

  final List<Map<String, String>> deets = [
    {
      'title': 'Stay Informed:',
      'description': 'Mirrorfeeds App with time, stocks, weather and news'
    },
    {'title': 'Fully Connected:', 'description': 'Wi-Fi, LAN, Bluetooth'},
    {
      'title': 'Easy Installation:',
      'description':
          'Wall mount bracket included. Installation within 30 minutes'
    },
    {
      'title': 'No Gap Mount:',
      'description': 'Aluminum profile for a No Gap wall mount'
    },
    {'title': 'Better Picture:', 'description': '8MP HD camera inside'},
    {
      'title': 'Great Audio:',
      'description': 'Hidden Integrated Stereo Speakers'
    },
    {
      'title': 'TV Completely Hidden:',
      'description':
          'When turned off, the monitor completely disappears and looks like a regular mirror'
    },
    {
      'title': 'See Yourself Better:',
      'description': 'Highly reflective silver mirror'
    },
    {'title': 'Advanced:', 'description': 'Quad Core 64 Bits Processor Inside'},
    {
      'title': 'Just Talk:',
      'description':
          'Embedded omnidirectional microphone with Google Assist Voice Control'
    },
    {'title': 'Access More:', 'description': 'Bluetooth Keyboard included'},
    {'title': 'Easy Control:', 'description': '10 Points Touch Screen Control'},
    {'title': 'Stable Floor Stand:', 'description': '(Optional)'}
  ];

  final List<Map<String, String>> compTable = [
    {
      'description1':
          'Yes, 4K UHD makes the difference. With 4 times the resolution, you will see a beautiful and vibrant picture quality.',
      'image':
          'https://www.evervue.com/evervue/assets/icon-of-4k-resolution.png',
      'addText': '4K Ultra High Definition?',
      'description2': 'Full HD or less.'
    },
    {
      'description1':
          'No, there are many great apps available that are free of charge and without long-term commitments. With that, you can easily change your workouts.',
      'image':
          'https://www.evervue.com/evervue/assets/icon-of-monthly-subscription.png',
      'addText': 'Monthly Subscription Required?',
      'description2':
          'Yes, subscription required which locks you in their program.'
    },
    {
      'description1':
          'Yes, talk to the mirror and Google Assist will help you. You can also sync the QAIO Flex to Google Home.',
      'image':
          'https://www.evervue.com/evervue/assets/google-assistant-icon.png',
      'addText': 'Google Assist Voice Control?',
      'description2': 'No, not available.'
    },
    {
      'description1':
          'Yes, very easy to control. After a workout, with a simple touch on the mirror you can move to the next session.',
      'image': 'https://www.evervue.com/evervue/assets/icon-of-touchsreen.png',
      'addText': 'Touchscreen Mirror?',
      'description2': 'No, does not come with a touchscreen.'
    },
    {
      'description1':
          'Yes, QAIO works with all your favorite Apps. Why limit yourself with just one app? Maybe you want to take dancing lessons next year. Who knows? With QAIO Flex, you can do it all.',
      'image': 'https://www.evervue.com/evervue/assets/logo-of-playstore.png',
      'addText': 'Runs all Apps you want?',
      'description2': 'No, you can only run their specific apps.'
    },
    {
      'description1':
          'Yes, QAIO Flex comes in 3 sizes: Standard, Active and Limitless. For people who do more active workouts, a larger mirror is recommended.',
      'image':
          'https://www.evervue.com/evervue/assets/fitness-mirror-three-different-sizes-icon.png',
      'addText': 'Different sizes available?',
      'description2': 'No, very limited options available.'
    },
    {
      'description1':
          'Yes, QAIO Flex offers 4 types of installation, so there is one that will work best for you.',
      'image':
          'https://www.evervue.com/evervue/assets/qaio-flex-fitness-mirror-mount-icon.png',
      'addText': 'Different mounts available?',
      'description2': 'Very limited mounting options to choose from.'
    },
    {
      'description1':
          'Yes, MirrorFeeds App provides the time, stock quotes, weather and news.',
      'image': 'https://www.evervue.com/evervue/assets/extra-panel-icon.png',
      'addText': 'Extra 12.1” Panel on top?',
      'description2':
          'No, only one main screen. No option to add additional screen.'
    },
    {
      'description1':
          'Yes, QAIO Flex has a high resolution 8MP camera built inside which allows you to take high quality videos and pictures. (The camera can be disconnected.)',
      'image':
          'https://www.evervue.com/evervue/assets/fitness-mirror-three-different-sizes-icon.png',
      'addText': '8MP HD Camera installed?',
      'description2': 'No, if available, it is limited to 2MP or 5MP.'
    },
    {
      'description1':
          'Yes, QAIO Flex has a silver, realistic reflection that can be used as a regular mirror when the monitor is off. The monitors will vanish completely when not in use.',
      'image':
          'https://www.evervue.com/evervue/assets/silver-mirror-fitness-mirror-icon.png',
      'addText': 'Extra Silver Mirror?',
      'description2':
          'No, many use tinted glass which makes it very difficult to see the TV.'
    },
  ];

  int selectedIndex = 0;

  final List<Map<String, String>> qaioSize = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/22-inch-width-fitness-mirror-tv.jpg',
      'size': 'STANDARD'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/29-inch-width-intelligent-fitness-mirror.jpg',
      'size': 'ACTIVE'
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/40-inch-width-smart-fitness-mirror.jpg',
      'size': 'LIMITLESS'
    }
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool ifScreen = screenWidth > 700;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: ifScreen ? 1000 : screenWidth,
                height: ifScreen ? 560 : screenHeight,
                child: FittedBox(
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: ifScreen ? 1000 : 1920,
                    height: ifScreen ? 560 : screenHeight,
                    child: const VideoPlayerWidget(
                        source:
                            'assets/qaio/resources/home/flex/qaio-fitness-mirror-video.mp4'),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Smart Fitness Mirror for\nYour Lifestyle',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              QaioImageStack(images: imageSelect),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Use QAIO Flex with\nAll Your Favorite Apps',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      LogoCarousel(contents: flexLogo),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Workout with Friends or Your Own Personal Coach: Achieve Your Fitness Goals with QAIO Flex',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                              'https://www.evervue.com/evervue/assets/woman-stretching-with-fitness-mirror.jpg',
                          memCacheWidth: ifScreen ? 500 : screenWidth.toInt()),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Make reaching your fitness goals a breeze with QAIO Flex, the smart fitness mirror that offers a full interactive display featuring the latest fitness classes and personalized virtual coaching sessions. Experience a total home gym solution, all within a sleek and stylish decorative mirror.\n\nQAIO Flex makes it easy to share the workout experience with friends, creating a motivational and supportive atmosphere during group training sessions or fitness parties. And when it\'s not in use, QAIO Flex seamlessly blends into your space as an elegant mirror that fits any décor. Upgrade your fitness journey with QAIO Flex, the ultimate smart fitness mirror that combines style, innovation, and functionality to help you achieve your goals and lead a healthier, happier life.',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'All from the Comfort of Your Home: Experience the Best of Both Worlds with QAIO Flex',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const QaioImageStack(images: [
                        'https://www.evervue.com/evervue/assets/woman-using-fitness-mirror-for-yoga.jpg',
                        'https://www.evervue.com/evervue/assets/woman-using-fitness-mirror-in-gym.jpg',
                        'https://www.evervue.com/evervue/assets/man-sits-by-fitness-mirror-drinking.jpg'
                      ]),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Mirror Features',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 165,
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
                                'https://www.evervue.com/evervue/assets/woman-exercising-in-a-fitness-mirror.jpg'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: deets.map((item) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${item['title']!} ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Century Gothic',
                                      fontSize: 14.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: item['description']!,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Century Gothic',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 500),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return FadeTransition(
                                  opacity: animation, child: child);
                            },
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
                                  imageUrl: qaioSize[selectedIndex]['image']!),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: qaioSize.asMap().entries.map((entry) {
                              int idx = entry.key;
                              var item = entry.value;

                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = idx;
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(20),
                                  padding: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 2,
                                        color: selectedIndex == idx
                                            ? const Color(0xff00aeef)
                                            : Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    item['size']!,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      QAIOFlexInstallation(),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: screenWidth,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(ifScreen ? 30 : 15),
                                    child: CachedNetworkImage(
                                        placeholder: (context, url) =>
                                            const Text(
                                              'Loading assets...',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 168, 0, 0),
                                                fontSize: 16,
                                              ),
                                            ),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                        imageUrl:
                                            'https://www.evervue.com/evervue/assets/qaio-flex-logo-black.png'),
                                  ),
                                ),
                                const Expanded(
                                  child: Text(
                                    '',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Other Fitness Mirrors',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: ifScreen ? 22 : 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Wrap(
                              children: compTable.asMap().entries.map((entry) {
                                int index = entry.key;
                                var item = entry.value;

                                return SizedBox(
                                  child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                230, 230, 230, 1)),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              padding: const EdgeInsets.all(10),
                                              child: Text(
                                                item['description1']!,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: ifScreen
                                                      ? 14
                                                      : screenWidth * 0.02,
                                                ),
                                                overflow: TextOverflow.visible,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: ifScreen
                                                  ? const EdgeInsets.all(40)
                                                  : const EdgeInsets.all(30),
                                              color: (index % 2 == 0)
                                                  ? const Color(0xff323232)
                                                  : const Color(0xff666666),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    height: 45,
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    child: CachedNetworkImage(
                                                        placeholder: (context,
                                                                url) =>
                                                            const CircularProgressIndicator(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      168,
                                                                      0,
                                                                      0),
                                                            ),
                                                        errorWidget: (context,
                                                                url, error) =>
                                                            const Icon(
                                                                Icons.error),
                                                        imageUrl:
                                                            item['image']!),
                                                  ),
                                                  Text(
                                                    item['addText']!,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: ifScreen
                                                          ? 14
                                                          : screenWidth * 0.02,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: const EdgeInsets.all(10),
                                              child: Text(
                                                item['description2']!,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: ifScreen
                                                      ? 14
                                                      : screenWidth * 0.02,
                                                ),
                                                overflow: TextOverflow.visible,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                );
                              }).toList(),
                            )
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
                                            'assets/specification/qaio-flex-specification-table.pdf',
                                      )),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            margin: const EdgeInsets.only(top: 20),
                            width: screenWidth,
                            color: const Color(0xff3b9ec7),
                            child: const Text(
                              'View Mirror Specifications',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
