import 'package:evervue/info_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreOption extends StatefulWidget {
  const MoreOption({super.key, required this.onPageSelected});

  final Function(Widget) onPageSelected;

  @override
  State<MoreOption> createState() => _MoreOptionState();
}

class _MoreOptionState extends State<MoreOption> {
  final List<String> optionItems = [
    'Support',
    'Schedule a Call',
    'Contact Us',
    'About Us',
  ];

  final List<dynamic> optionLinks = [
    'https://www.evervue.com/support/',
    'https://on.sprintful.com/schedule-a-call-with-evervue',
    const ContactUs(),
    const AboutUs(),
  ];

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: optionItems.asMap().entries.map((entry) {
                      int direction = entry.key;
                      String textValue = entry.value;

                      return InkWell(
                        onTap: () {
                          final link = optionLinks[direction];
                          if (link is String) {
                            _launchURL(link);
                          } else if (link is Widget) {
                            widget.onPageSelected(link);
                          } else {
                            throw 'Invalid link type: ${link.runtimeType}';
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 5,
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Color(0xffbbbbbb)),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(textValue),
                              const Icon(Iconsax.arrow_right_3, size: 16),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
