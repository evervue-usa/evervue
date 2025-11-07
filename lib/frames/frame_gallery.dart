import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/frames/image_viewer.dart';
import 'package:flutter/material.dart';

class FrameGallery extends StatelessWidget {
  const FrameGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                  child: Container(
                color: const Color(0xfff5f4f2),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: const Border(
                          top: BorderSide(
                            color: Color(0xfff5f4f2),
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/white/bogra.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/white/kiruna.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/white/loja.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/white/narva.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/white/perama.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/white/tarifa.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/white/zaio.jpeg',
                          ];
                          List<String> imageName = [
                            'Bogra',
                            'Kiruna',
                            'Loja',
                            'Narva',
                            'Perama',
                            'Tarifa',
                            'Zaio',
                          ];
                          List<String> imageDescription = [
                            'Category A\nST-22',
                            'Category E\nST-04',
                            'Category C\nYS-04',
                            'Category C\nGT-04',
                            'Category C\n',
                            'Category C\nHJ-20',
                            'Category C\nYS-05',
                          ];

                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/white/white-frame-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: imageDescription,
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/white-frame-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/black/boca.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/black/kaizu.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/black/katiola.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/black/kilan.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/black/palai.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/black/tivoli.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/black/vaasa.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/black/voiron.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/black/yala.jpeg',
                          ];
                          List<String> imageName = [
                            'Boca',
                            'Kaizu',
                            'Katiola',
                            'Kilan',
                            'Palai',
                            'Tivoli',
                            'Vaasa',
                            'Voiron',
                            'Yala',
                          ];
                          List<String> imageDescription = [
                            'Category C\nGA-05',
                            'Category C\nYS-03',
                            'Category C\nGT-02',
                            'Category C\nGA-04',
                            'Category A\nST-15',
                            'Category C\nGA-04',
                            'Category C\n',
                            'Category C\nGA-06',
                            'Category C\nST-16',
                          ];

                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/black/black-frame-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: imageDescription,
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/black-frame-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/vauci/croc.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/vauci/python.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/vauci/gator.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/vauci/leaves.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/vauci/cow.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/vauci/suede.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/vauci/skulls.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/vauci/fleur.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/vauci/zebra.jpeg',
                          ];
                          List<String> imageName = [
                            'Crocodile\n(Eastern Red)',
                            'Python\n(Gold)',
                            'Gator\n(Iguana Green)',
                            'Leaves\n(Blue)',
                            'Cow Leather\n(Blue)',
                            'Suede\n(Ivory)',
                            '\nSkulls',
                            'Fleur De Lis\n(Beige)',
                            'Hair On Hide\n(Zebra)',
                          ];
                          List<String> imageDescription = [
                            '17-622',
                            '21-201',
                            '18-707',
                            '16-206',
                            '11-202',
                            '13-201',
                            '17-806',
                            '18-304',
                            '14-601',
                          ];

                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/vauci/vauci-frame-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: imageDescription,
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/vauci-frame-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/stainless-steel/brush.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/stainless-steel/polished.jpeg',
                          ];
                          List<String> imageName = [
                            'Stainless Steel\nBrushed',
                            'Stainless Steel\nPolished',
                          ];
                          List<String> imageDescription = [
                            'Category C\nST-10',
                            'Category C\nST-11',
                          ];

                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/stainless-steel/stainless-steel-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: imageDescription,
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/stainless-frame-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/renaissance/cac_gol.jpg',
                            'https://www.evervue.com/evervue/assets/frames/renaissance/cac_sil.jpg',
                            'https://www.evervue.com/evervue/assets/frames/renaissance/gai_gol.jpg',
                            'https://www.evervue.com/evervue/assets/frames/renaissance/gai_sil.jpg',
                            'https://www.evervue.com/evervue/assets/frames/renaissance/osi_gol.jpg',
                            'https://www.evervue.com/evervue/assets/frames/renaissance/osi_sil.jpg',
                            'https://www.evervue.com/evervue/assets/frames/renaissance/sal_gol.jpg',
                            'https://www.evervue.com/evervue/assets/frames/renaissance/sal_sil.jpg',
                            'https://www.evervue.com/evervue/assets/frames/renaissance/var_gol.jpg',
                          ];
                          List<String> imageName = [
                            'Caccuri',
                            'Caccuri',
                            'Gairo',
                            'Gairo',
                            'Osini',
                            'Osini',
                            'Salara',
                            'Salara',
                            'Varzo',
                          ];
                          List<String> imageDescription = [
                            'Gold',
                            'Silver',
                            'Gold',
                            'Silver',
                            'Gold',
                            'Silver',
                            'Gold',
                            'Silver',
                            'Gold',
                          ];

                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/renaissance/renaissance-frame-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: imageDescription,
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/renaissance-frame-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/mosaic/boracay.jpg',
                            'https://www.evervue.com/evervue/assets/frames/mosaic/cop_che.jpg',
                            'https://www.evervue.com/evervue/assets/frames/mosaic/desert.jpg',
                            'https://www.evervue.com/evervue/assets/frames/mosaic/inpuz.jpg',
                            'https://www.evervue.com/evervue/assets/frames/mosaic/marrakech.jpg',
                            'https://www.evervue.com/evervue/assets/frames/mosaic/med.jpg',
                            'https://www.evervue.com/evervue/assets/frames/mosaic/oceanplease.jpg',
                            'https://www.evervue.com/evervue/assets/frames/mosaic/siesta.jpg',
                            'https://www.evervue.com/evervue/assets/frames/mosaic/venetian.jpg',
                          ];
                          List<String> imageName = [
                            'Boracay',
                            'Copper Chess',
                            'Desert',
                            'Indian Puzzle',
                            'Marrakech',
                            'Mediterranean',
                            'Ocean\'s Please',
                            'Siesta',
                            'Venetian',
                          ];
                          List<String> imageDescription = [
                            'SEA07',
                            'STL05',
                            'STN16',
                            'WD02',
                            'CLR01',
                            'STN13',
                            'SHL06',
                            'CLR08',
                            'CL03',
                          ];
                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/mosaic/mosaic-frames-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: imageDescription,
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/mosaic-frame-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/mediterranean/sueca.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/mediterranean/calafat.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/mediterranean/corsica.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/mediterranean/tarifa.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/mediterranean/sassari.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/mediterranean/sardinia.jpeg',
                          ];
                          List<String> imageName = [
                            'Seuca',
                            'Calafat',
                            'Corsica',
                            'Tarifa',
                            'Sassari',
                            'Sardinia',
                          ];
                          List<String> imageDescription = [
                            'MED1',
                            'MED2',
                            'MED3',
                            'MED4',
                            'MED5',
                            'MED6',
                          ];
                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/mediterranean/mediterranean-frame-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: imageDescription,
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/mediterranean-frame-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/gold/bangkok.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/gold/chaco.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/gold/colon.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/gold/herlev.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/gold/lamia.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/gold/livorno.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/gold/thira.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/gold/viana.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/gold/vilar.jpeg',
                          ];
                          List<String> imageName = [
                            'Bangkok',
                            'Chaco',
                            'Colon',
                            'Herlev',
                            'Lamia',
                            'Livorno',
                            'Thira',
                            'Viana',
                            'Vilar',
                          ];
                          List<String> imageDescription = [
                            'Category C\nGA-03',
                            'Category C\n',
                            'Category C\nHJ-01',
                            'Category C\nLS-04',
                            'Category C\nLS-02',
                            'Category C\n',
                            'Category C\n',
                            'Category C\nYM-04',
                            'Category C\nYM-02',
                          ];
                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/gold/gold-frame-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: imageDescription,
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/golden-frame-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/silver/bibala.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/silver/bourges.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/silver/chiwan.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/silver/salta.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/silver/tanji.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/silver/taranto.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/silver/tokat.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/silver/veria.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/silver/vichy.jpeg',
                          ];
                          List<String> imageName = [
                            'Bibala',
                            'Bourges',
                            'Chiwan',
                            'Salta',
                            'Tanji',
                            'Taranto',
                            'Tokat',
                            'Veria',
                            'Vichy',
                          ];
                          List<String> imageDescription = [
                            'Category C\nGA-02',
                            'Category C\nLS-11',
                            'Category C\nHJ-08',
                            'Category A\nST-18',
                            'Category C\n',
                            'Category C\nLS-10',
                            'Category C\nLS-09',
                            'Category C\nLS-03',
                            'Category A\n',
                          ];
                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/silver/silver-frames-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: imageDescription,
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/silver-frame-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/wood/akola.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/wood/fora.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/wood/karis.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/wood/manabi.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/wood/nalut.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/wood/pomoni.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/wood/sala.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/wood/sevres.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/wood/tibati.jpeg',
                          ];
                          List<String> imageName = [
                            'Akola',
                            'Fora',
                            'Karis',
                            'Manabi',
                            'Nalut',
                            'Pomoni',
                            'Sala',
                            'Sevres',
                            'Tibati',
                          ];
                          List<String> imageDescription = [
                            'Category A\nST-23',
                            'Category A\nST-13',
                            'Category C\nST-07',
                            'Category C\n',
                            'Category C\nST-09',
                            'Category C\nHJ-13',
                            'Category A\nST-14',
                            'Category C\nHJ-14',
                            'Category E\nST-06',
                          ];
                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/wood/wooden-frames-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: imageDescription,
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/wood-frame-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/lamp/capriola.jpg',
                            'https://www.evervue.com/evervue/assets/frames/lamp/casazza.jpg',
                            'https://www.evervue.com/evervue/assets/frames/lamp/ferrone.jpg',
                            'https://www.evervue.com/evervue/assets/frames/lamp/formina.jpg',
                            'https://www.evervue.com/evervue/assets/frames/lamp/giano.jpg',
                            'https://www.evervue.com/evervue/assets/frames/lamp/pavana.jpg',
                            'https://www.evervue.com/evervue/assets/frames/lamp/ribolla.jpg',
                            'https://www.evervue.com/evervue/assets/frames/lamp/terzo.jpg',
                            'https://www.evervue.com/evervue/assets/frames/lamp/vigasio.jpg',
                          ];
                          List<String> imageName = [
                            'Capriola',
                            'Casazza',
                            'Ferrone',
                            'Formina',
                            'Giano',
                            'Pavana',
                            'Ribolla',
                            'Terzo',
                            'Vigasio',
                          ];
                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/lamp/ambiance-lamp-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: const [],
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/ambiance-lamp-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          List<String> imagePaths = [
                            'https://www.evervue.com/evervue/assets/frames/etch/french.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/etch/gatsby.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/etch/geometrical.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/etch/mandala.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/etch/nature.jpeg',
                            'https://www.evervue.com/evervue/assets/frames/etch/paisley.jpeg',
                          ];
                          List<String> imageName = [
                            'French',
                            'Gatsby',
                            'Geometrical',
                            'Mandala',
                            'Nature',
                            'Paisley',
                          ];
                          String imageTitle =
                              'https://www.evervue.com/evervue/assets/frames/etch/etch-frames-logo.jpg';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDisplay(
                                imageTitle: imageTitle,
                                imagePaths: imagePaths,
                                imageName: imageName,
                                imageDescriptions: const [],
                              ),
                            ),
                          );
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
                          imageUrl:
                              'https://www.evervue.com/evervue/assets/etch-design-banner.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
