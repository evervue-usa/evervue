import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/grandmirrors/lig_mir/aura.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:evervue/grandmirrors/lig_mir/logo.dart';
import 'package:evervue/grandmirrors/lig_mir/lux.dart';
import 'package:evervue/grandmirrors/lig_mir/hollywood.dart';
import 'package:evervue/grandmirrors/lig_mir/lumiere.dart';
import 'package:evervue/grandmirrors/lig_mir/ambiance.dart';
import 'package:evervue/grandmirrors/lig_mir/eclipse.dart';
import 'package:evervue/grandmirrors/lig_mir/etch.dart';
import 'package:evervue/grandmirrors/lig_mir/deco.dart';
import 'package:evervue/grandmirrors/lig_mir/allure.dart';
import 'package:evervue/grandmirrors/lig_mir/cabinet.dart';
import 'package:evervue/grandmirrors/lig_mir/mosaic.dart';
import 'package:evervue/grandmirrors/lig_mir/mediterranean.dart';
import 'package:evervue/grandmirrors/lig_mir/professional.dart';
import 'package:evervue/grandmirrors/lig_mir/hospitality.dart';
import 'package:evervue/grandmirrors/lig_mir/baroque.dart';

class LightedMirrors extends StatefulWidget {
  const LightedMirrors({super.key});

  @override
  State<LightedMirrors> createState() => _LightedMirrorsState();
}

class ListInfo {
  final Widget pageName;
  final String imageName;
  final String prodName;

  ListInfo(this.pageName, this.imageName, this.prodName);
}

class ListInfoHalf {
  final Widget pageName;
  final String imageName;
  final String prodName;

  ListInfoHalf(this.pageName, this.imageName, this.prodName);
}

class _LightedMirrorsState extends State<LightedMirrors> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final pageContent = <ListInfo>[
      ListInfo(const LuxPage(), 'grand-mirrors-lux.jpg', 'LUX'),
      ListInfo(const LumierePage(), 'grand-mirrors-lumiere.jpg', 'LUMIÈRE'),
    ];

    final pageHalfContent = <ListInfoHalf>[
      ListInfoHalf(const AuraPage(), 'aura-lighted-mirror-aura.jpg', 'AURA'),
      ListInfoHalf(const HollywoodPage(), 'grand-mirrors-hollywood-new.jpg',
          'HOLLYWOOD'),
      ListInfoHalf(const LogoPage(), 'grand-mirrors-logo.jpg', 'LOGO'),
      ListInfoHalf(
          const AmbiancePage(), 'grand-mirrors-ambiance.jpg', 'AMBIANCE'),
      ListInfoHalf(const EclipsePage(), 'grand-mirrors-eclipse.jpg', 'ECLIPSE'),
      ListInfoHalf(const EtchPage(), 'grand-mirrors-etch.jpg', 'ETCH'),
      ListInfoHalf(const DecoPage(), 'grand-mirrors-deco.jpg', 'DECO'),
      ListInfoHalf(const AllurePage(), 'grand-mirrors-allure.jpg', 'ALLURE'),
      ListInfoHalf(const CabinetPage(), 'grand-mirrors-cabinet.jpg', 'CABINET'),
      ListInfoHalf(const MosaicPage(), 'grand-mirrors-mosaic.jpg', 'MOSAIC'),
      ListInfoHalf(const MediterraneanPage(), 'grand-mirrors-mediterranean.jpg',
          'MEDITERRANEAN'),
      ListInfoHalf(const BaroquePage(), 'grand-mirrors-baroque.jpg', 'BAROQUE'),
      ListInfoHalf(const ProfessionalPage(), 'grand-mirrors-professional.jpg',
          'PROFESSIONAL'),
      ListInfoHalf(const HospitalityPage(), 'grand-mirrors-hospitality.jpg',
          'HOSPITALITY'),
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: StaggeredGrid.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            children: [
                              ...List.generate(
                                  pageContent.length,
                                  (index) => StaggeredGridTile.count(
                                      crossAxisCellCount: 2,
                                      mainAxisCellCount: 1,
                                      child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        pageContent
                                                            .elementAt(index)
                                                            .pageName));
                                          },
                                          child: Stack(
                                            children: [
                                              CachedNetworkImage(
                                                placeholder: (context, url) =>
                                                    const Text(
                                                  'Loading assets...',
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 168, 0, 0),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                errorWidget:
                                                    (context, url, error) =>
                                                        const Icon(Icons.error),
                                                imageUrl:
                                                    'https://www.evervue.com/evervue/assets/${pageContent.elementAt(index).imageName}',
                                                fit: BoxFit.cover,
                                                width: double.infinity,
                                                height: double.infinity,
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                right: 0,
                                                width: screenWidth * 0.35,
                                                child: Container(
                                                  color: Colors.white
                                                      .withValues(alpha: 0.75),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10,
                                                      horizontal: 5),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      const Text(
                                                        'Grand Mirrors',
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      Text(
                                                        pageContent
                                                            .elementAt(index)
                                                            .prodName,
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      Container(
                                                        color: Colors.black,
                                                        height: 3,
                                                        width: 50,
                                                        margin: const EdgeInsets
                                                            .all(3),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )))),
                              ...List.generate(
                                  pageHalfContent.length,
                                  (index) => StaggeredGridTile.count(
                                      crossAxisCellCount: 1,
                                      mainAxisCellCount: 0.8,
                                      child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        pageHalfContent
                                                            .elementAt(index)
                                                            .pageName));
                                          },
                                          child: Stack(
                                            children: [
                                              CachedNetworkImage(
                                                placeholder: (context, url) =>
                                                    const Text(
                                                  'Loading assets...',
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 168, 0, 0),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                errorWidget:
                                                    (context, url, error) =>
                                                        const Icon(Icons.error),
                                                imageUrl:
                                                    'https://www.evervue.com/evervue/assets/${pageHalfContent.elementAt(index).imageName}',
                                                fit: BoxFit.cover,
                                                width: double.infinity,
                                                height: double.infinity,
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                right: 0,
                                                width: (screenWidth / 2) * 0.75,
                                                child: Container(
                                                  color: Colors.white
                                                      .withValues(alpha: 0.75),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10,
                                                      horizontal: 5),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      const Text(
                                                        'Grand Mirrors',
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      Text(
                                                        pageHalfContent
                                                            .elementAt(index)
                                                            .prodName,
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      Container(
                                                        color: Colors.black,
                                                        height: 3,
                                                        width: 50,
                                                        margin: const EdgeInsets
                                                            .all(3),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ))))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
