import 'package:evervue/cosmos/cosmos_mounts.dart';
import 'package:evervue/cosmos/soundwave_concert.dart';
import 'package:evervue/cosmos/soundwave_cylinder.dart';
import 'package:evervue/cosmos/soundwave_theater.dart';
import 'package:flutter/material.dart';

class CosmosAccessories extends StatefulWidget {
  const CosmosAccessories({super.key, required this.onPageSelected});
  final Function(Widget) onPageSelected;

  @override
  State<CosmosAccessories> createState() => _CosmosAccessoriesState();
}

class _CosmosAccessoriesState extends State<CosmosAccessories> {
  List<Map<String, dynamic>> list = [
    {
      'cat': 'Floor Mount',
      'sub': [
        'Self Standing',
        'Stone Base',
        'Permanent',
        'Wheeled',
        'Swivel Standing'
      ],
      'content': [
        {
          'banner':
              'https://www.evervue.com/evervue/assets/mounts/floor_mount/self-standing-floor-mount-outdoor-tv.jpg',
          'title': 'Self Standing Floor Mount',
          'images': [
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/self-standing/outdoor-tv-mounting.jpg',
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/self-standing/back-view-stainless-steel-outdoor-tv-stand.jpg'
          ],
          'description': [
            'Available for all Cosmos Outdoor TV sizes.',
            'Completely made of stainless steel (S304).',
            'Extra heavy and solid stainless-steel base.',
            'Very stable, rustproof and no maintenance required.'
          ],
          'com': [0, 1, 2, 3]
        },
        {
          'banner':
              'https://www.evervue.com/evervue/assets/mounts/floor_mount/self-standing-floor-mount-outdoor-tv.jpg',
          'title': 'Stone Base Self-Standing Floor Mount',
          'images': [
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/stone_base/white-beige-river-stone-stand-base-for-tv.jpg',
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/stone_base/black-river-stone-stand-base-for-tv.jpg',
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/stone_base/colored-slate-stone-base-for-outdoor-tv.jpg',
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/stone_base/outdoor-tv-black-slate-stone-base.jpg',
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/stone_base/white-granite-outdoor-tv-stand-base.jpg'
          ],
          'description': [
            'Available for all sizes Cosmos Outdoor TVs.',
            'Completely made of stainless steel (S304.)',
            'Available is different types of real stone.',
            'Fill the container with sand for optimal stability.',
            'Power cable insert from the bottom or from the side.'
          ],
          'com': [0, 1, 2, 3]
        },
        {
          'banner':
              'https://www.evervue.com/evervue/assets/mounts/floor_mount/self-standing-floor-mount-outdoor-tv.jpg',
          'title': 'Permanent Floor Mount',
          'images': [
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/permanent_floor/Cosmos_Permanent-Mount_Front.jpg',
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/permanent_floor/Cosmos_Permanent-Mount_Back.jpg'
          ],
          'description': [
            'Available for all sizes Cosmos Outdoor TVs.',
            'Completely made of stainless steel (S304).',
            'Power cable insert from the bottom or from the side.',
            'Very stable, rustproof and no maintenance required.'
          ],
          'com': [0, 1, 4, 3]
        },
        {
          'banner':
              'https://www.evervue.com/evervue/assets/mounts/floor_mount/self-standing-floor-mount-outdoor-tv.jpg',
          'title': 'Wheeled Floor Mount',
          'images': [
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/wheeled_floormount/Cosmos_Wheeled-Mount_Front-2.jpg',
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/wheeled_floormount/Cosmos_Wheeled-Mount_Back-2.jpg'
          ],
          'description': [
            'Available for all sizes Cosmos Outdoor TVs.',
            'Completely made of stainless steel (S304).',
            'Wheels on corners have a break mechanism.',
            'Power cable insert from the bottom or from the side.',
            'Very stable, rustproof and no maintenance required.'
          ],
          'com': [0, 1, 2, 3]
        },
        {
          'banner':
              'https://www.evervue.com/evervue/assets/mounts/floor_mount/self-standing-floor-mount-outdoor-tv.jpg',
          'title': 'Swivel Standing Floor Mount',
          'images': [
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/swivel_floormount/Cosmos_Self-Standing-Floor-Mount-Round-Base_Front.jpg',
            'https://www.evervue.com/evervue/assets/mounts/floor_mount/swivel_floormount/Cosmos_Self-Standing-Floor-Mount-Round-Base_Back.jpg'
          ],
          'description': [
            'Available for Cosmos Outdoor TV sizes: 32" 40" 50"',
            'Completely made of stainless steel (S304)',
            'Extra heavy and solid stainless-steel base.',
            'Swivels left or right to achieve the ideal viewing angle.',
            'Very stable, rustproof and no maintenance required.'
          ],
          'com': [0, 2, 3]
        }
      ]
    },
    {
      'cat': 'Ceiling Mount',
      'sub': [],
      'content': [
        {
          'banner':
              'https://www.evervue.com/evervue/assets/mounts/floor_mount/ceiling-mounted-outdoor-tv.jpg',
          'title': 'Ceiling Mount',
          'images': [
            'https://www.evervue.com/evervue/assets/mounts/ceiling_mount/Cosmos_Ceiling_Front.jpg',
            'https://www.evervue.com/evervue/assets/mounts/ceiling_mount/Cosmos_Ceiling_Back.jpg'
          ],
          'description': [
            'Available for all Cosmos Outdoor TV sizes.',
            'Completely made of stainless steel (S304).',
            'The standard distance from top TV to ceiling is 8” (20 cm); this can be customized when ordering.',
            'Power cable is inserted from the end or from the side.',
            'Very stable, rustproof and no maintenance required.'
          ],
          'com': [0, 1, 2, 3]
        },
      ]
    },
    {
      'cat': 'Table Mount',
      'sub': [],
      'content': [
        {
          'banner':
              'https://www.evervue.com/evervue/assets/mounts/floor_mount/best-outdoor-tv-in-table-mount.jpg',
          'title': 'Table Mount',
          'images': [
            'https://www.evervue.com/evervue/assets/mounts/table_mount/Cosmos_Table-Mount_Front.jpg',
            'https://www.evervue.com/evervue/assets/mounts/table_mount/Cosmos_Table-Mount_Back.jpg'
          ],
          'description': [
            'Available for all Cosmos Outdoor TV sizes.',
            'Completely made of stainless steel (S304).',
            'The standard distance from bottom TV to table 8” (20 cm); this can be customized when ordering.',
            'Very stable, rustproof and no maintenance required.'
          ],
          'com': [0, 1, 2, 3]
        },
      ]
    },
    {
      'cat': 'Hot Tub Mount',
      'sub': [],
      'content': [
        {
          'banner':
              'https://www.evervue.com/evervue/assets/mounts/floor_mount/hot-tub-mount-outdoor-tv.jpg',
          'title': 'Hot Tub Mount',
          'images': [
            'https://www.evervue.com/evervue/assets/mounts/hot_tub/Cosmos_Hot-Tub_Front_1.jpg',
            'https://www.evervue.com/evervue/assets/mounts/hot_tub/Cosmos_Hot-Tub_Back.jpg'
          ],
          'description': [
            'Available for 40" and 50" Cosmos Outdoor TV sizes.',
            'Completely made of stainless steel (S304).',
            'This mount can be quickly removed from the hot tub in case the cover is used.',
            'A small adjustment on the cover needs to be made to keep this bracket installed.',
            'Very stable, rustproof and no maintenance required.'
          ],
          'com': [0, 1, 2, 3]
        },
      ]
    },
    {
      'cat': 'Wall Mount',
      'sub': ['Standard', 'Side', 'Swivel'],
      'content': [
        {
          'banner':
              'https://www.evervue.com/evervue/assets/mounts/floor_mount/formliner-wall-with-outdoor-tv.jpg',
          'title': 'Standard Wall Mount',
          'images': [
            'https://www.evervue.com/evervue/assets/mounts/wall_mount/standard/Cosmos_Standard-BR-2.jpg',
            'https://www.evervue.com/evervue/assets/mounts/wall_mount/standard/wall-mounted-outdoor-tv-back-view.jpg'
          ],
          'description': [
            'Available for all Cosmos Outdoor TV sizes.',
            'Designed for Cosmos that allows you to keep the rain cap on the TV when mounted.',
            'Completely made of stainless steel (S304).',
            'Very stable, rustproof and no maintenance required.'
          ],
          'com': [0, 1, 2, 3]
        },
        {
          'banner':
              'https://www.evervue.com/evervue/assets/mounts/floor_mount/formliner-wall-with-outdoor-tv.jpg',
          'title': 'Side Wall Mount',
          'images': [
            'https://www.evervue.com/evervue/assets/mounts/wall_mount/side/Cosmos_Side-Wall-Mount_Front.jpg',
            'https://www.evervue.com/evervue/assets/mounts/wall_mount/side/Cosmos_Side-Wall-Mount_Back.jpg'
          ],
          'description': [
            'Available for all Cosmos Outdoor TV sizes.',
            'Completely made of stainless steel (S304).',
            'The standard distance from side TV to wall 8” (20 cm); This can be customized when ordering.',
            'Bracket can be used on both sides.',
            'Power cable insert from the end or the bottom.',
            'Very stable, rustproof and no maintenance required.'
          ],
          'com': [0, 1, 2, 3]
        },
        {
          'banner':
              'https://www.evervue.com/evervue/assets/mounts/floor_mount/formliner-wall-with-outdoor-tv.jpg',
          'title': 'Swivel Wall Mount',
          'images': [
            'assets/cosmos/resources/home/convertible-swivel-mount-outdoor-tv.mp4'
          ],
          'description': [
            'Available for Cosmos Outdoor TV sizes: 32", 40", 50".',
            'Completely made of Aluminum.',
            'Full Swivel, 10 degrees pan, and push-in and pull-out mechanism.',
            'Power cable insert from the end or the bottom',
            'Very stable, rustproof and no maintenance required.'
          ],
          'com': [1, 2, 3]
        },
      ]
    }
  ];

  final List<Map<String, dynamic>> soundWave = [
    {'page': SoundWaveConcert(), 'option': 'SoundWave Concert'},
    {'page': SoundWaveTheater(), 'option': 'SoundWave Theater'},
    {'page': SoundWaveCylinder(), 'option': 'SoundWave Cylinder'},
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
              child: Text(
                'Mounts',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: list.map((item) {
                  return Column(children: [
                    if (item['sub'].isNotEmpty)
                      Column(children: [
                        Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.black, width: 0.5))),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 3),
                            child: Text(
                              '${item['cat']}',
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: (item['sub'] as List<String>)
                                .asMap()
                                .entries
                                .map((i) {
                              int index = i.key;
                              String entry = i.value;
                              return Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.black,
                                              width: 0.5))),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 30),
                                  child: InkWell(
                                    onTap: () {
                                      widget.onPageSelected(CosmosMountsPage(
                                        desc: index,
                                        content: item['content'],
                                      ));
                                    },
                                    child: Text(entry),
                                  ));
                            }).toList(),
                          ),
                        ),
                      ]),
                    if (item['sub'].isEmpty)
                      Column(children: [
                        Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.black, width: 0.5))),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 3),
                            child: InkWell(
                                onTap: () {
                                  widget.onPageSelected(CosmosMountsPage(
                                    desc: 0,
                                    content: item['content'],
                                  ));
                                },
                                child: Text(
                                  '${item['cat']}',
                                ))),
                      ]),
                  ]);
                }).toList(),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
              child: Text(
                'SoundWave',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: soundWave.asMap().entries.map((entry) {
                    Map<String, dynamic> media = entry.value;

                    return InkWell(
                      onTap: () {
                        widget.onPageSelected(media['page']);
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.black, width: 0.5))),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 3),
                        child: Text(media['option']!),
                      ),
                    );
                  }).toList()),
            ),
            const SizedBox(height: 30),
          ]),
        ),
      ),
    );
  }
}
