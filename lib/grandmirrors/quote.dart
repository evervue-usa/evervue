import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GMQuotePage extends StatelessWidget {
  const GMQuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Stack(children: <Widget>[
        SingleChildScrollView(
          child: Center(
            child: Container(
                margin: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'Get Your Customized Quote and Personalized Drawing in Just 2 Business Days!\n\n'
                        'We invite you to fill out our easy and efficient Online Quotation Request Form, which will help us provide you with a detailed quote based on your preferences. It only takes a few minutes to complete!',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'By filling out the form, you\'ll be able to:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        '1. Choose from our wide array of available options and features.\n'
                        '2. Specify your requirements and preferences to ensure a tailored solution.\n'
                        '3. Receive a customized quote within just 2 business days.\n'
                        '4. Get a personalized drawing that showcases how your final product will look.\n',
                      ),
                    ),
                    InkWell(
                      onTap: () =>
                          _launchUrl('grandmirrors.com/request-quote/'),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
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
                            color: Colors.white,
                            border: Border.all(
                                color: const Color(0xffE0A957), width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          'Request Quote',
                          style: TextStyle(
                              color: Color(0xffE0A957),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => _launchUrl('grandmirrors.com/store/'),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
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
                          'Go to Buy Page',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ])),
    );
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
