import 'package:evervue/templates/pdf_viewer.dart';
import 'package:flutter/material.dart';
import '../templates/image_slider_align.dart';

class CinemaHomePage extends StatefulWidget {
  const CinemaHomePage({super.key});

  @override
  State<CinemaHomePage> createState() => _CinemaHomePageState();
}

class _CinemaHomePageState extends State<CinemaHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const ImageCarouselAlign(
              imagePaths: [
                'https://www.evervue.com/evervue/assets/radiant-television-display-of-colors.jpg',
                'https://www.evervue.com/evervue/assets/cinema-colossal-film-experience.jpg',
                'https://www.evervue.com/evervue/assets/high-definition-display-tv.jpg',
                'https://www.evervue.com/evervue/assets/vibrant-display-cinema-in-living-room.jpg'
              ],
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'A TV Like No Other',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Evervue\'s Cinema Smart TV brings the Big',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Screen to your Living Room. Delight in a colossal film experience with TV sizes as large as 110. \nCinema Smart TV comes with a super 4K Ultra HD resolution so every detail of its vibrant display is maximized. \nCinema Smart TV comes standard, with a beautiful stainless steel floor mount for easy set up.Cinema Smart is compatible with content providers such as Apple TV or DirecTV so programs can be streamed with ease. PlayStation and Xbox consoles can be installed in the back of the unit so wires vanish from sight. \nWith Cinema Smart TV, Invite Your Friends and Enjoy Life Size Entertainment!',
                      ),
                    ),
                    Container(
                      width: screenWidth,
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Key Features:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '● ',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(width: 2),
                                Expanded(
                                  child: Text(
                                    'TV sizes include 60″, 75”, 85”, 100” and 110”.',
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '● ',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 2),
                              Expanded(
                                child: Text(
                                  '4K Ultra High Definition resolution.',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '● ',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 2),
                              Expanded(
                                child: Text(
                                  'Standard with stainless steel floor mount.',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '● ',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 2),
                              Expanded(
                                child: Text(
                                  'Choose from different frame finishes.',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '● ',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 2),
                              Expanded(
                                child: Text(
                                  'Compatible with Apple TV, DirecTV, Infinity and much more.',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '● ',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 2),
                              Expanded(
                                child: Text(
                                  'Game Consoles (PlayStation, Xbox) can be installed on the back of the TV.',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '● ',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 2),
                              Expanded(
                                child: Text(
                                  'Cable Free Design with power outlets on the back of the TV.',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const ImageCarouselAlign(
                        imagePaths: [
                          'https://www.evervue.com/evervue/assets/different-cinema-tv-sizes.jpg',
                          'assets/cinema/resources/section1/vivid-display-experience-using-cinema.mp4',
                          'assets/cinema/resources/section1/cinema-vast-high-definition-tv.mp4',
                          'assets/cinema/resources/section1/cinema-tv-shows-vibrant-display.mp4',
                        ],
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Designed Like No Other',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Incredible Impressions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Celebrate cherished memories by featuring your favorite family moments on an Ultra High Definition display, reminiscent of traditional picture frames but with a modern twist.Exceptional in Size and Resolution, Evervue Cinema smart TV offers incredible impressions to all of its viewers. \nThe Cinema Smart TV is classified as a commercial grade television, yet it is also perfect for residential use. Unsurpassed in Quality, Cinema Smart TV is a smart addition to both residential and professional applications everywhere.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Cinema Anywhere',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Showcase Cinema Smart TV from any corner of your world where entertainment is a must have. Display comfortably in your living room or bedroom. In hotels, upgrade to the best so guests can be awed when they walk into the presidential suite. In law offices, keep clients happy waiting in the lobby. These are all great examples where Cinema Smart TV can add long lasting value to any location.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Easy set up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Take time to enjoy the best in life, don\nt waste it on complicated installations. We designed Cinema Smart TV with an easy start in mind. Simply plug in the power supply, connect to Wi-Fi, and get ready to sit back, relax and enjoy your new Magnificent TV.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Elegant and Stable',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Why not remove that bulky TV stand or cabinet from your room? Evervue\ns Cinema Smart TV comes standard with an elegantly designed floor stand of beautiful, strong and stable stainless steel. Choose between a brushed or polished finish for a flawless look. Since all of our products are handcrafted to order you can custom change the height of the TV pole between 2″ and 30″. Now the perfect viewing angle is always possible.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const ImageCarouselAlign(
                        imagePaths: [
                          'assets/cinema/resources/section2/single-oval-pole-cinema-tv.mp4',
                          'https://www.evervue.com/evervue/assets/cinema-in-living-room-display.jpg',
                          'https://www.evervue.com/evervue/assets/exceptional-size-and-resolution.jpg',
                          'assets/cinema/resources/section2/double-round-pole-cinema.mp4',
                        ],
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Cinema Smart TV with Wall Mount',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Cinema Smart TV is also available with a sturdy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'Wall Mount for those who prefer to feature the TV as a stand-alone wall display.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'This mount is designed with a powerful stainless-steel construction for extreme durability. With its specially designed framing, this wall mount has many locations on the back available to attach to any surface.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'With Cinema Smart Wall Mount, versatility and strength makes this a trusted option for every space.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const ImageCarouselAlign(
                        imagePaths: [
                          'assets/cinema/resources/section3/cinema-stainless-steel-mount.mp4',
                          'assets/cinema/resources/section3/cinema-smart-wall-mount.mp4',
                          'assets/cinema/resources/section3/cinema-wall-mount.mp4',
                          'https://www.evervue.com/evervue/assets/cinema-sturdy-wall-mount.jpg',
                        ],
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Features and Options Like No Other',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Choose Your Match',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'Personalize your Cinema Smart TV with a signature selection of Brushed or Polished Stainless Steel, Matte Black Steel, or authentic American Black Walnut wood. These polished looks inspire elegance at every glance.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Integrated Game Console and Cable Box Compartment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'Don\nt get distracted by cumbersome wires. Safely tuck away your game console or cable box in a built in niche behind the TV. With Cinema Smart, you can install your favorite game console, such as PlayStation or Xbox. Want to add you\nre Infinity or DirecTV box? No problem. Stay simple and well organized with our integrated compartment.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Add Your Sound',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'With years of experience handcrafting electronics; we wanted to make sure the beautiful design was not compromised with internal speakers that would not be used. We know our clients expect the best and would prefer the most elite audio by installing a high quality sound bar, for example a Bose, Sony or Yamaha sound bar. With Cinema Smart TV, the two detachable arms will hold any sound bar allowing you to integrate the best sound without sacrificing appearance.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const ImageCarouselAlign(
                        imagePaths: [
                          'https://www.evervue.com/evervue/assets/cinema-internal-speakers.jpg',
                          'https://www.evervue.com/evervue/assets/cinema-in-polished-stainless-steel-1.jpg',
                          'assets/cinema/resources/section4/cinema-stainless-steel-finish.mp4',
                        ],
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'You want Apple TV?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'Okay, simply install your Apple TV box on the back of the Cinema Smart TV. With the pre-installed IR transmitter, you can then aim the remote towards the front of the TV and still control your Apple TV hidden from view.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Cable Free Design',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'No messy cables, wires and connectors around the TV anymore. All you need is one power connection and all your devices (game console, set top box, sound bar) will work as needed. Simply plug in one of the 6 AC power outlets on the pole and choose your device.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'External Devices?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'The vertical pole is equipped with an HDMI cable and an Optical Audio cable. Now you can easily connect an extra DVD player, or your audio system without cables and wires hanging around the TV.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Remote Control Friendly',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'The Infrared Receiver is concealed in the vertical pole and can also be used for the remote controls of your other devices, for example Apple TV and your cable set top box.',
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const ImageCarouselAlign(
                        imagePaths: [
                          'https://www.evervue.com/evervue/assets/cinema-double-pole-back-specifications.jpg',
                          'https://www.evervue.com/evervue/assets/cinema-single-pole-specifications.jpg',
                          'https://www.evervue.com/evervue/assets/cinema-double-pole-back-specifications.jpg',
                          'https://www.evervue.com/evervue/assets/cinema-single-pole-specifications.jpg',
                          'assets/cinema/resources/section5/cinema-cable-free-design.mp4',
                          'assets/cinema/resources/section5/cable-free-cinema-tv.mp4',
                        ],
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
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
                                          'assets/specification/cinema-specification-table.pdf',
                                    )),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          margin: const EdgeInsets.only(top: 20),
                          width: screenWidth,
                          color: const Color(0xffB32927),
                          child: const Text(
                            'View Mirror Specifications',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
