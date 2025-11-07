import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GMAboutUs extends StatelessWidget {
  const GMAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              centerTitle: false,
              scrolledUnderElevation: 0.0,
              backgroundColor: Colors.white,
              flexibleSpace: PreferredSize(
                  preferredSize: const Size.fromHeight(80.0),
                  child: SafeArea(
                      child: Align(
                    alignment: Alignment.bottomCenter,
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
                          'https://www.evervue.com/evervue/assets/gm_au.jpg',
                      fit: BoxFit.contain,
                    ),
                  ))),
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(4.0),
                  child: Divider(
                    height: 10,
                    indent: 15,
                    endIndent: 15,
                    thickness: 1,
                    color: Color(0xffC9B593),
                  )),
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 25),
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
                            'https://www.evervue.com/evervue/assets/grand-mirrors-logo.png',
                        width: screenWidth * .5,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth - 50,
                      child: const Text(
                        'Welcome to the world of Grand Mirrors, a flagship product line of Evervue, established in 2001. We are a leading provider of custom-made mirrors for both residential and commercial clients.\n\n'
                        'Our commitment to quality is reflected in every aspect of our business. We use only the finest materials and employ the most advanced manufacturing processes to ensure that every mirror we create meets the highest standards of quality and durability.\n\n'
                        'We are also proud to incorporate Philips LED lights into our mirrors, providing our customers with the highest possible quality in today\'s market. These lights offer exceptional brightness and clarity, enhancing the functionality and beauty of our mirrors.\n\n'
                        'As a part of Evervue, we are dedicated to providing exceptional customer service and building lasting relationships with our clients. We believe in working closely with our customers to understand their unique needs and preferences, so we can create mirrors that exceed their expectations.\n\n'
                        'Choose Grand Mirrors for your next project, and discover the difference that our passion for quality and innovation can make.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(height: 1.5),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 15,
              child: FloatingActionButton.small(
                elevation: 2,
                shape: const CircleBorder(),
                backgroundColor: Colors.transparent,
                onPressed: _whatsApp,
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
                        'https://www.evervue.com/evervue/assets/whatsapp.png'),
              ))
        ],
      )),
    );
  }
}

class GMContactUs extends StatelessWidget {
  const GMContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              centerTitle: false,
              scrolledUnderElevation: 0.0,
              backgroundColor: Colors.white,
              flexibleSpace: PreferredSize(
                  preferredSize: const Size.fromHeight(80.0),
                  child: SafeArea(
                      child: Align(
                    alignment: Alignment.bottomCenter,
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
                          'https://www.evervue.com/evervue/assets/gm_cu.jpg',
                      fit: BoxFit.contain,
                    ),
                  ))),
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(4.0),
                  child: Divider(
                    height: 10,
                    indent: 15,
                    endIndent: 15,
                    thickness: 1,
                    color: Color(0xffC9B593),
                  )),
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Wrap(
                  direction: Axis.vertical,
                  spacing: 15,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () =>
                          launchUrl(Uri.parse('mailto:sales@evervue.com')),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        width: screenWidth * 0.8,
                        decoration: BoxDecoration(
                            color: const Color(0xfff7e3c6),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
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
                                    'https://www.evervue.com/evervue/assets/contact-email.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email',
                                  style: TextStyle(
                                      color: Color(0xffa69379),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'sales@evervue.com',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => _whatsApp(),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        width: screenWidth * 0.8,
                        decoration: BoxDecoration(
                            color: const Color(0xfff7e3c6),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
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
                                    'https://www.evervue.com/evervue/assets/contact-whatsapp.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'WhatsApp',
                                  style: TextStyle(
                                      color: Color(0xffa69379),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '+1 (949) 441 4262',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => _launchPhoneCall('+1 949 441 4262'),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        width: screenWidth * 0.8,
                        decoration: BoxDecoration(
                            color: const Color(0xfff7e3c6),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
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
                                    'https://www.evervue.com/evervue/assets/contact-whatsapp.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Phone',
                                  style: TextStyle(
                                      color: Color(0xffa69379),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '+1 (949) 441 4262',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: screenWidth * 0.8,
                      decoration: BoxDecoration(
                          color: const Color(0xfff7e3c6),
                          borderRadius: BorderRadius.circular(35)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
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
                                  'https://www.evervue.com/evervue/assets/contact-location.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(
                                    color: Color(0xffa69379),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Evervue USA Inc.\n'
                                '120 Newport Center Drive,\n'
                                'Newport Beach,\n'
                                'CA 92660, USA',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => _launchUrl('www.evervue.com/support/'),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        width: screenWidth * 0.8,
                        decoration: BoxDecoration(
                            color: const Color(0xfff7e3c6),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
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
                                    'https://www.evervue.com/evervue/assets/contact-support.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Support',
                                  style: TextStyle(
                                      color: Color(0xffa69379),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'evervue.com/support/',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () => _launchUrl('www.instagram.com/evervue/'),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        width: screenWidth * 0.8,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0x503771C8),
                                Color(0x506600FF),
                                Color(0x50C837AB),
                                Color(0x50FF543E),
                                Color(0x50FFDD55),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
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
                                    'https://www.evervue.com/evervue/assets/contact-instagram.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Instagram',
                                  style: TextStyle(
                                      color: Color(0xffbd1c9d),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'instagram.com/evervue/',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 15,
              child: FloatingActionButton.small(
                elevation: 2,
                shape: const CircleBorder(),
                backgroundColor: Colors.transparent,
                onPressed: _whatsApp,
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
                        'https://www.evervue.com/evervue/assets/whatsapp.png'),
              ))
        ],
      )),
    );
  }
}

Future<void> _whatsApp() async {
  var url = 'https://api.whatsapp.com/send?phone=19494414262';
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

Future<void> _launchPhoneCall(String phoneNumber) async {
  var url = 'tel:$phoneNumber';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
