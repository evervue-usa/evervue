import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final List<Map<String, dynamic>> flagOptions = [
    {
      'image':
          'https://www.evervue.com/evervue/assets/flags/united-states-flag.png',
      'text': 'UNITED STATES',
      'address': 'Evervue USA Inc.\n'
          '120 Newport Center Drive\n'
          'Newport Beach, CA 92660\n'
          'U.S.A.',
      'whatsapp': '',
      'url': '',
      'phone': '+1 (949) 441 4262',
      'email': 'sales@evervue.com',
      'website': 'www.evervue.com',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/flags/united-kingdom-flag.png',
      'text': 'UNITED KINGDOM',
      'address': 'Evervue UK Ltd.\n'
          '124 City Road\n'
          'London EC1V 2NX\n'
          'United Kingdom',
      'whatsapp': '',
      'url': '',
      'phone': '+44 020 3880 8599',
      'email': 'sales@evervue.co.uk',
      'website': 'www.evervue.co.uk',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/flags/netherlands-flag.png',
      'text': 'THE NETHERLANDS',
      'address': 'Evervue Nederland B.V.\n'
          'Burg. de Raadtsingel 67 B\n'
          '3311 JG Dordrecht\n'
          'The Netherlands',
      'whatsapp': '',
      'url': '',
      'phone': '+31 20 809 0550',
      'email': 'info@evervue.nl',
      'website': 'www.evervue.nl',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/flags/united-arab-emirates-flag.png',
      'text': 'U.A.E.',
      'address': 'Evervue Gulf - FZCO\n'
          'IFZA Business Parks\n'
          'DDP, P.O. Box 342001, Dubai\n'
          'United Arab Emirates (U.A.E.)\n'
          '\nEvervue Middle East (FZC)\n'
          'Sharjah Airport International Free Zone\n'
          'Saif Suite, Gold Park Q1-2-063 Sharjah\n'
          'United Arab Emirates (U.A.E.)\n',
      'whatsapp': '+971 58 571 5230',
      'url': '971585180059',
      'phone': '+971 58 571 5230',
      'email': 'info@evervue.ae',
      'website': 'www.evervue.ae',
    },
    {
      'image':
          'https://www.evervue.com/evervue/assets/flags/australia-flag.png',
      'text': 'AUSTRALIA',
      'address': 'Evervue PTY Ltd.\n'
          'Suite 302/13-15 Wentworth Avenue\n'
          'Sydney NSW 2000\n'
          'Australia',
      'whatsapp': '',
      'url': '',
      'phone': '+61 (02) 7229 3818',
      'email': 'sales@evervue.com.au',
      'website': 'www.evervue.com.au',
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/flags/panama-flag.png',
      'text': 'PANAMÁ',
      'address': 'Evervue Américas S.A.\n'
          'Oceania Business Plaza\n'
          'Torre 1000, Piso 49\n'
          'Punta Pacifica\n'
          'Ciudad de Panamá\n'
          'Panamá',
      'whatsapp': '',
      'url': '',
      'phone': '+507 834 5988',
      'email': 'informacion@evervue.com.pa',
      'website': 'www.evervue.com.pa',
    },
    {
      'image': 'https://www.evervue.com/evervue/assets/flags/hongkong-flag.png',
      'text': 'HONG KONG',
      'address': 'Evervue Asia Ltd.\n'
          'Room 1003 10/F\n'
          '655 Nathan Road\n'
          'Mongkok,Hong Kong',
      'whatsapp': '',
      'url': '',
      'phone': '+852 3703 8763',
      'email': 'sales@evervue.com.hk',
      'website': 'www.evervue.com.hk',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1000),
          width: screenWidth,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                'CONTACT & TECHNICAL SUPPORT',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'For technical support, ',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Century Gothic'),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'click here',
                            style: const TextStyle(
                                color: Color(0xffaa2926),
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                _launchUrl('www.evervue.com/support/');
                              }),
                        const TextSpan(
                            text: ' to submit your support request.',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Century Gothic'))
                      ])),
              const SizedBox(
                height: 50,
              ),
              Container(
                  constraints: const BoxConstraints(maxWidth: 1000),
                  width: screenWidth,
                  child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      alignment: WrapAlignment.center,
                      runSpacing: 50,
                      children: flagOptions.asMap().entries.map((entry) {
                        Map<String, dynamic> flagList = entry.value;

                        return SizedBox(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                imageUrl: flagList['image'],
                                memCacheWidth: 70,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 10),
                                child: Text(
                                  flagList['text'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                flagList['address'],
                                textAlign: TextAlign.center,
                              ),
                              if (flagList['whatsapp'] != '' &&
                                  flagList['url'] != '')
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: RichText(
                                      text: TextSpan(
                                          text: 'WhatsApp: ',
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Century Gothic'),
                                          children: <TextSpan>[
                                        TextSpan(
                                            text: flagList['whatsapp'],
                                            style: const TextStyle(
                                                color: Color(0xff337ab7)),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () async {
                                                _launchwhatsApp(
                                                    flagList['url']);
                                              })
                                      ])),
                                ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: RichText(
                                    text: TextSpan(
                                        text: 'Phone: ',
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Century Gothic'),
                                        children: <TextSpan>[
                                      TextSpan(
                                          text: flagList['phone'],
                                          style: const TextStyle(
                                              color: Color(0xff337ab7)),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () async {
                                              _launchPhoneCall(
                                                  flagList['phone']);
                                            })
                                    ])),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: RichText(
                                    text: TextSpan(
                                        text: 'Email: ',
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Century Gothic'),
                                        children: <TextSpan>[
                                      TextSpan(
                                          text: flagList['email'],
                                          style: const TextStyle(
                                              color: Color(0xff337ab7)),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () async {
                                              _launchEmail(flagList['email']);
                                            })
                                    ])),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: RichText(
                                      text: TextSpan(
                                          text: 'Website: ',
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Century Gothic'),
                                          children: <TextSpan>[
                                        TextSpan(
                                            text: flagList['website'],
                                            style: const TextStyle(
                                                color: Color(0xff337ab7)),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () async {
                                                _launchUrl(flagList['website']);
                                              })
                                      ]))),
                              if (flagList['text'] == 'HONG KONG')
                                Column(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        'FOR PHILIPPINE CONSUMERS',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: RichText(
                                          text: TextSpan(
                                              text: 'Phone: ',
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Century Gothic'),
                                              children: <TextSpan>[
                                            TextSpan(
                                                text: '+63 919 095 9387',
                                                style: const TextStyle(
                                                    color: Color(0xff337ab7)),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        _launchPhoneCall(
                                                            '+639190959387');
                                                      })
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: RichText(
                                          text: TextSpan(
                                              text: 'Email: ',
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Century Gothic'),
                                              children: <TextSpan>[
                                            TextSpan(
                                                text: 'sales@evervue.com.ph',
                                                style: const TextStyle(
                                                    color: Color(0xff337ab7)),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        _launchEmail(
                                                            'sales@evervue.com.ph');
                                                      })
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: RichText(
                                          text: TextSpan(
                                              text: 'Website: ',
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Century Gothic'),
                                              children: <TextSpan>[
                                            TextSpan(
                                                text: 'www.evervue.com.ph',
                                                style: const TextStyle(
                                                    color: Color(0xff337ab7)),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        _launchUrl(
                                                            'www.evervue.com.ph');
                                                      })
                                          ])),
                                    ),
                                  ],
                                )
                            ],
                          ),
                        );
                      }).toList())),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      )),
    );
  }
}

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Scaffold(
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'ABOUT US',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth - 50,
                      child: const Text(
                        'Welcome to Evervue, your trusted provider of state-of-the-art mirror and display solutions. For over 20 years, we have been dedicated to revolutionizing the industry by integrating cutting-edge technology with elegant design.\n\n'
                        'Over the years, we have expanded our product line to include an extensive range of mirror and display solutions, from bathroom mirrors with built-in displays to outdoor TVs and digital signage. As a result, we have become a leading brand in both residential and commercial sectors, known for our commitment to innovation, quality, and reliability.\n\n'
                        'At Evervue, we believe in staying ahead of the curve, constantly striving to bring the latest technological advancements to our customers. By investing in research and development, we have been able to create groundbreaking products that cater to the evolving needs of our clients.\n\n'
                        'We are immensely proud of our heritage and the reputation we\'ve built over the past two decades. As we continue to grow, we remain dedicated to upholding our core values of innovation, quality, and exceptional customer service.\n\n'
                        'Thank you for choosing Evervue. We look forward to transforming your spaces with our industry-leading mirror and display solutions.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(height: 1.5),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

Future<void> _launchwhatsApp(String webUrl) async {
  var url = 'https://api.whatsapp.com/send?phone=$webUrl';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchUrl(String webUrl) async {
  var url = 'https://$webUrl';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchEmail(String webUrl) async {
  var url = 'mailto:$webUrl';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchPhoneCall(String phoneNumber) async {
  var url = 'tel:$phoneNumber';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
