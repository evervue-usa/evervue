import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'process.dart';
import 'package:url_launcher/url_launcher.dart';

class HowToOrder extends StatelessWidget {
  const HowToOrder({super.key});

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
                          'https://www.evervue.com/evervue/assets/gm_op.jpg',
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
                    const ProcessPage(),
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
                          'https://www.evervue.com/evervue/assets/plane.png',
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                    Container(
                      padding: const EdgeInsets.all(25),
                      width: double.infinity,
                      color: const Color(0xffE2DFD8),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Worldwide Shipping',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff413831)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Grand Mirrors is proud to offer international shipping. Free shipping is available for all custom orders in the United States and Canada.',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff413831),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Your Grand Mirrors order comes with zero risk. If your mirror arrives damaged, we will gladly accept its return and remake your order at no additional cost. According to our terms and conditions, we require any defects upon delivery to be reported within 24 hours of receiving the product.',
                              style: TextStyle(color: Color(0xff413831)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.fromLTRB(15, 25, 15, 10),
                        child: Text(
                          'Order from us directly via:',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                    Container(
                        width: 350,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: const Text(
                          'To request a quotation, please fill out the form here:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                          textAlign: TextAlign.center,
                        )),
                    GestureDetector(
                      onTap: () =>
                          _launchUrl('grandmirrors.com/request-quote/'),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        width: screenWidth * .75,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(40, 0, 0, 0),
                                offset: Offset(0, 3),
                                blurRadius: 2,
                                spreadRadius: 1,
                              )
                            ],
                            color: const Color(0xffE0A957),
                            border: Border.all(
                                color: const Color(0xffE0A957), width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          'Request Quotation',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'Call us at:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        GestureDetector(
                            onTap: () => _launchPhoneCall('+1 949 441 4262'),
                            child: const Text(
                              '+1 (949) 441 4262',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffE0A957),
                                decorationColor: Color(0xffE0A957),
                                decoration: TextDecoration.underline,
                                fontStyle: FontStyle.italic,
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'E-mail us at:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        GestureDetector(
                            onTap: () => launchUrl(
                                Uri.parse('mailto:sales@evervue.com')),
                            child: const Text(
                              'sales@evervue.com',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffE0A957),
                                decorationColor: Color(0xffE0A957),
                                decoration: TextDecoration.underline,
                                fontStyle: FontStyle.italic,
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'Online order at:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        GestureDetector(
                            onTap: () =>
                                _launchUrl('www.grandmirrors.com/store'),
                            child: const Text(
                              'www.grandmirrors.com/store',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffE0A957),
                                decorationColor: Color(0xffE0A957),
                                decoration: TextDecoration.underline,
                                fontStyle: FontStyle.italic,
                              ),
                            )),
                        const SizedBox(
                          height: 30,
                        )
                      ],
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

Future<void> _whatsApp() async {
  const url = 'https://api.whatsapp.com/send?phone=19494414262';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchPhoneCall(String phoneNumber) async {
  final url = 'tel:$phoneNumber';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchUrl(String webUrl) async {
  final url = 'https://$webUrl';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
