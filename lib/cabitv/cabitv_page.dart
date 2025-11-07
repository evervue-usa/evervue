// ignore_for_file: strict_top_level_inference

import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/cabitv/cabitv_more.dart';
import 'package:evervue/cabitv/cabitv_options.dart';
import 'package:evervue/cabitv/ct_100.dart';
import 'package:evervue/cabitv/ct_200.dart';
import 'package:evervue/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async {
  runApp(const CabiTVPage());
}

class CabiTVPage extends StatelessWidget {
  const CabiTVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Century Gothic',
        scaffoldBackgroundColor: Colors.white,
      ),
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        final scale = mediaQueryData.textScaler
            .clamp(minScaleFactor: 1.0, maxScaleFactor: 1.3);
        return MediaQuery(
          data: mediaQueryData.copyWith(textScaler: scale),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: child,
            ),
          ),
        );
      },
      home: const CabiTVMainPage(),
    );
  }
}

class CabiTVMainPage extends StatefulWidget {
  const CabiTVMainPage({super.key});

  @override
  State<CabiTVMainPage> createState() => _CabiTVMainPageState();
}

class _CabiTVMainPageState extends State<CabiTVMainPage> {
  int changePage = 0;
  late Widget currentPage;

  @override
  void initState() {
    super.initState();
    currentPage = CabiTVOptions(onOptionSelected: _onOptionSelected);
  }

  void _onOptionSelected(int index) {
    setState(() {
      if (index == 1) {
        currentPage = const CT100Page();
      } else if (index == 2) {
        currentPage = const CT200Page();
      }
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      changePage = index;
      if (index == 0) {
        currentPage = CabiTVOptions(onOptionSelected: _onOptionSelected);
      } else if (index == 1) {
        _quotePage();
      } else if (index == 2) {
        currentPage = CabiTVMorePage(onPageSelected: _onPageSelected);
      } else {
        currentPage = const CabiTVMainPage();
      }
    });
  }

  void _onPageSelected(Widget page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
        leading: FloatingActionButton.large(
          heroTag: 'left-fab',
          shape: const CircleBorder(),
          elevation: 0.0,
          highlightElevation: 0.0,
          backgroundColor: Colors.white,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainPage(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Image.asset('assets/icons/home-evervue.png'),
          ),
        ),
        flexibleSpace: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: CachedNetworkImage(
                  placeholder: (context, url) => const Text(
                    'Loading assets...',
                    style: TextStyle(
                      color: Color.fromARGB(255, 168, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl:
                      'https://www.evervue.com/evervue/assets/cabitv-logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        title: Align(
          alignment: Alignment.topRight,
          child: FloatingActionButton.small(
            heroTag: 'right-fab',
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
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageUrl:
                    'https://www.evervue.com/evervue/assets/whatsapp.png'),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Divider(
            height: 10,
            indent: 15,
            endIndent: 15,
            thickness: 0.5,
            color: Colors.amber,
          ),
        ),
      ),
      body: SafeArea(
        child: currentPage,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xffc5c5c5),
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: changePage,
          unselectedFontSize: 12,
          selectedFontSize: 12.5,
          type: BottomNavigationBarType.fixed,
          unselectedIconTheme: const IconThemeData(size: 24),
          selectedIconTheme: const IconThemeData(size: 26),
          backgroundColor: Colors.white,
          fixedColor: const Color(0xffB32927),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  'assets/icons/gray/home-cabitv-gray.png',
                  width: 24,
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  'assets/icons/home-cabitv.png',
                  width: 26,
                ),
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5),
                child: ImageIcon(CachedNetworkImageProvider(
                    'https://www.evervue.com/evervue/assets/quote.png')),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(5),
                child: ImageIcon(CachedNetworkImageProvider(
                    'https://www.evervue.com/evervue/assets/quote.png')),
              ),
              label: 'Quote',
            ),
            const BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5),
                child: ImageIcon(CachedNetworkImageProvider(
                    'https://www.evervue.com/evervue/assets/more.png')),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(5),
                child: ImageIcon(CachedNetworkImageProvider(
                    'https://www.evervue.com/evervue/assets/more.png')),
              ),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _whatsApp() async {
  const url = 'https://api.whatsapp.com/send?phone=19494038285';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _quotePage() async {
  const url = 'https://www.cabitv.com/request-quote/';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
