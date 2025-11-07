import 'package:evervue/templates/pdf_viewer.dart';
import 'package:flutter/material.dart';
import '../templates/image_slider_align.dart';

class SpectrumHomePage extends StatefulWidget {
  const SpectrumHomePage({super.key});

  @override
  State<SpectrumHomePage> createState() => _SpectrumHomePageState();
}

class _SpectrumHomePageState extends State<SpectrumHomePage> {
  final List<Map<String, String>> mirrorData = [
    {
      'source':
          'assets/mirrorvue/resources/highlights/best-silver-glass-custom-Mirror-TV.mp4',
      'title': 'Silver',
      'description':
          'Experience complete vanishing technology as your television disappears entirely when turned off.',
      'description2':
          'Ideal for bathrooms, salons, makeup mirrors, restrooms, changing rooms, and dressing mirrors.',
    },
    {
      'source':
          'assets/mirrorvue/resources/highlights/advertising-mirrorvue-tv.mp4',
      'title': 'Advertisement',
      'description':
          'Perfect for commercial settings. The advertisement option ensures your TV vanishes completely when not in use.',
      'description2':
          'Suitable for stores, malls, elevators, point of sale displays, public areas, and restaurants.',
    },
    {
      'source':
          'assets/mirrorvue/resources/highlights/tinted-custom-glass-4k-Mirror-TV.mp4',
      'title': 'Tinted',
      'description':
          'Enjoy an 80% vanishing effect, making it a subtle choice for living rooms, bedrooms, home cinemas, and restaurants.',
      'description2': '',
    },
    {
      'source':
          'assets/mirrorvue/resources/highlights/black-glass-best-custom-Mirror-TV.mp4',
      'title': 'Black',
      'description':
          'The non-vanishing mirror glass creates a striking visual effect in any setting ideal for special applications.',
      'description2': '',
    },
    {
      'source':
          'assets/mirrorvue/resources/highlights/bronze-glass-OLED-custom-TV.mp4',
      'title': 'Bronze',
      'description':
          'Add warmth and sophistication to your space with our non-vanishing bronze mirror glass, perfect for living rooms, restaurants, lobbies, and bedrooms.',
      'description2': '',
    },
    {
      'source':
          'assets/mirrorvue/resources/highlights/gold-OLED-custom-TV-Mirror.mp4',
      'title': 'Gold',
      'description':
          'Elevate your décor with our luxurious gold mirror television glass, suitable for living rooms, restaurants, lobbies, and bedrooms.',
      'description2':
          'This non-vanishing option adds a touch of opulence to any environment.',
    },
    {
      'source':
          'assets/mirrorvue/resources/highlights/rose-gold-glass-custom-Mirror-TV.mp4',
      'title': 'Rose Gold',
      'description':
          'Embrace contemporary elegance with our rose gold mirror glass.',
      'description2':
          'Ideal for living rooms, restaurants, lobbies, and bedrooms, this non-vanishing option exudes a modern, refined aesthetic.',
    },
  ];

  int selectedIndex = 0;

  final List<Map<String, String>> mountOptions = [
    {
      'title': 'Standard Wall-Mount',
      'description':
          'Each MirrorVue comes equipped with standard wall-mount rails on the back of the mirror, allowing you to securely hang your MirrorVue to the mounting strip attached to your wall. Depending on the size of your MirrorVue, there will be either 2 or 4 mounting strips.',
      'videoUrl':
          'assets/mirrorvue/resources/highlights/custom-Mirror-TV-wall-mount.mp4'
    },
    {
      'title': 'Magnet Wall-Mount',
      'description':
          'If your space does not allow for the 1" (2.54 cm) lift needed for a regular wall-mount, the magnet mount is an excellent alternative. This option enables you to position the mirror under a cabinet without any gap between the mirror and the cabinet, ensuring a sleek finish.',
      'videoUrl':
          'assets/mirrorvue/resources/highlights/custom-Mirror-magnet-mount.mp4'
    },
    {
      'title': 'Recessed Wall-Mount',
      'description':
          'For a seamless integration, choose the Recessed Wall-Mount. This option allows the TV Unit section of the MirrorVue to be recessed into the wall or another flat surface. The mirror glass rests flush on the wall surface, secured by a sturdy, large amount of Velcro attached to the rear of the MirrorVue.',
      'videoUrl':
          'assets/mirrorvue/resources/highlights/MirrorVue-OLED-TV-recessed-mount.mp4'
    },
  ];

  int activeIndex = 0;
  final List<Map<String, String>> thumbImg = [
    {
      'assetUrl':
          'https://www.evervue.com/evervue/assets/gallery-style-experience-spectrum-tv.jpg'
    },
    {
      'assetUrl':
          'https://www.evervue.com/evervue/assets/ultra-high-definition-experience.jpg'
    },
    {
      'assetUrl':
          'assets/spectrum/resources/section1/captivating-images-preview-in-spectrum.mp4'
    },
    {
      'assetUrl':
          'assets/spectrum/resources/section1/painting-gallery-displayed-in-television.mp4'
    },
    {
      'assetUrl':
          'assets/spectrum/resources/section1/spectrum-high-definition-display.mp4'
    }
  ];

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
                  'https://www.evervue.com/evervue/assets/diverse-selection-of-mood-television.jpg',
                  'https://www.evervue.com/evervue/assets/abstract-painting-on-tv.jpg',
                  'https://www.evervue.com/evervue/assets/elegant-television.jpg',
                  'assets/spectrum/resources/banner/spectrum-banner.mp4'
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
                          'Discover a World of Visual Wonders:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Effortlessly display a diverse selection of artwork to suit your mood or special occasions. Curate your own dynamic collection or stream from online photo galleries. Venture into virtual museum tours from around the globe for a truly immersive experience.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Give Your Family Memories the Spotlight:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Celebrate cherished memories by featuring your favorite family moments on an Ultra High Definition display, reminiscent of traditional picture frames but with a modern twist.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Elevate Your Entertainment Experience:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Spectrum Smart TV Display is more than just an art display; it\ns a fully functional smart TV. Equipped with the latest Android TV software and pre-installed apps, enjoy seamless access to popular streaming services such as Netflix and Hulu.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Expand Your Horizons:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Easily connect devices like Apple TV, Amazon Fire TV, or a satellite set-top box for an even broader range of applications and entertainment options.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const ImageCarouselAlign(
                          imagePaths: [
                            'https://www.evervue.com/evervue/assets/ultra-high-definition-experience.jpg',
                            'assets/spectrum/resources/section1/captivating-images-preview-in-spectrum.mp4',
                            'https://www.evervue.com/evervue/assets/gallery-style-experience-spectrum-tv.jpg',
                            'assets/spectrum/resources/section1/spectrum-high-definition-display.mp4',
                            'assets/spectrum/resources/section1/painting-gallery-displayed-in-television.mp4'
                          ],
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Experience Convenience with Wireless Bluetooth Keyboard:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Spectrum allows for effortless control while you enjoy a gallery-style experience from the comfort of your favorite chair or couch. A wireless Bluetooth keyboard is included with your purchase for seamless navigation.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Intelligent Screen Dimmer Function:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Spectrum welcomes you with a touch of elegance, automatically illuminating when the lights are turned on. The screen dims as the room darkens and turns completely black at night. This feature can be enabled or disabled according to user preference.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Innovative Invisible Power Cable:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Spectrum offers an optional 20-foot/6-meter “invisible” power cable for a sleek and unobtrusive setup. Simply attach the ultra-thin cable to the wall and paint over it, or conceal it under wallpaper, carpet, or wooden flooring. With all Spectrum TVs powered by 24 volts, this solution is both safe and discreet.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Effortless 3-Step Setup:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          '1. Mount the Spectrum on your wall.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          '2. Connect power supply.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          '3. Connect to Wi-Fi and enjoy an unparalleled viewing experience.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Spectrum is designed to simplify your life while enhancing your visual enjoyment. Experience the perfect blend of technology and elegance with Spectrum Smart TV Display.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const ImageCarouselAlign(
                          imagePaths: [
                            'https://www.evervue.com/evervue/assets/gallery-style-experience-spectrum-tv.jpg',
                            'https://www.evervue.com/evervue/assets/abstract-painting-display-on-painting.jpg',
                            'assets/spectrum/resources/section2/invisible-power-cable.mp4',
                            'assets/spectrum/resources/section1/captivating-images-preview-in-spectrum.mp4'
                          ],
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Spectrum: Transforming Spaces Everywhere',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Elevate any room with Spectrum, from the bedroom as a discreet television solution to the living room as an interactive art display. Restaurants can instantly upgrade their ambiance to match any desired dining experience. With Spectrum, bring your vision to life for every occasion.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Gap-Free Wall Mount:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Spectrum frames are designed to fit seamlessly against the wall, leaving only a 1/12″ / 2mm gap for ventilation and optimal audio quality.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Matte Front Glass:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Crafted with gallery-quality, non-reflective matte glass, the Spectrum\ns front panel ensures deep, clear colors on its 4K resolution screen. This carefully tempered glass is durable, scratch-resistant, and easy to clean for everyday use.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Effortless SD Card Access:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Spectrum features an easily accessible SD card slot at the bottom for manual picture transfers. Although wireless transfer is also available, the SD card remains a popular method for moving images from your computer to the display.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Invisible Built-In Speakers:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Spectrum is equipped with two hidden speakers, allowing viewers to focus on the captivating images without being distracted by bulky external speakers.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const ImageCarouselAlign(
                          imagePaths: [
                            'https://www.evervue.com/evervue/assets/spectrum-apecifications.jpg',
                            'assets/spectrum/resources/section3/spectrum-portrait-landscape-orientation.mp4',
                            'assets/spectrum/resources/section3/spectrum-displaying-high-definition-quality.mp4'
                          ],
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Customize Your Spectrum',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Choose the size:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Available in screen sizes of 32″, 40″, 50″, 60″, and 75″, Spectrum\ns overall dimensions are larger than the visible screen panel. Please refer to the specifications at the bottom of this page for complete dimensions.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Select the Orientation:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Spectrum offers both landscape and portrait orientations. For TV usage, we highly recommend the landscape orientation.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          'Pick Your Frame:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Select from a variety of frame styles to match any taste or color scheme. Choose from Black Walnut wood with a natural brown finish or opt for a contemporary black, beige, brown, or brushed aluminum frame for a distinctive look.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Embrace the perfect blend of technology and artistry with Spectrum, and bring new life to every room in your home or business.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const ImageCarouselAlign(
                          imagePaths: [
                            'assets/spectrum/resources/section4/spectrum-different-frame-colors.mp4',
                            'https://www.evervue.com/evervue/assets/spectrum-different-sizes.jpg',
                            'assets/spectrum/resources/section4/vibrant-colors-displayed-on-spectrum.mp4'
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
                                            'assets/specification/spectrum-specification-table.pdf',
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
        ),
      ),
    );
  }
}
