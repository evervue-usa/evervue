// ignore_for_file: deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:evervue/customer_page.dart';
import 'package:evervue/home_option.dart';
import 'package:evervue/manual_page.dart';
import 'package:evervue/more_option.dart';
import 'package:evervue/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:new_version_plus/new_version_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final prefs = await SharedPreferences.getInstance();
  final bool isFirstRun = prefs.getBool('isFirstRun') ?? true;

  if (isFirstRun) {
    await prefs.setBool('isFirstRun', false);
    runApp(const MyApp());
  } else {
    runApp(const MainPage());
  }

  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Material(
      color: const Color(0xffB32927),
      child: Center(
        child: Text(
          'Error: ${details.exceptionAsString()}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Century Gothic',
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xffB32A26)),
      ),
      home: const Splashscreen(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 767;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Century Gothic',
        scaffoldBackgroundColor: Colors.white,
      ),
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);

        // Clamp the raw scale factor safely
        final clampedFactor = mediaQueryData.textScaleFactor.clamp(
          1.0,
          1.3,
        );

        final safeScale = TextScaler.linear(clampedFactor);

        return MediaQuery(
          data: mediaQueryData.copyWith(textScaler: safeScale),
          child: Center(
            child: ConstrainedBox(
              constraints: ifScreen
                  ? BoxConstraints(maxWidth: screenWidth)
                  : const BoxConstraints(maxWidth: 1000),
              child: child!,
            ),
          ),
        );
      },
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int changePage = 0;
  late Widget currentPage;

  @override
  void initState() {
    super.initState();
    checkAppUpdate(newVersion);
    currentPage = const HomePageOptions();
  }

  void _onItemTapped(int index) {
    setState(() {
      changePage = index;
      if (index == 0) {
        currentPage = const HomePageOptions();
      } else if (index == 1) {
        currentPage = const ManualsPage();
      } else if (index == 2) {
        _storePage();
      } else if (index == 3) {
        currentPage = const CustomerPage();
      } else if (index == 4) {
        currentPage = MoreOption(onPageSelected: _onPageSelected);
      }
    });
  }

  void _onPageSelected(Widget page) {
    setState(() {
      currentPage = page;
    });
  }

  final newVersion = NewVersionPlus();

  Future<void> checkAppUpdate(NewVersionPlus newVersion) async {
    final status = await newVersion.getVersionStatus();

    if (status != null && status.canUpdate && mounted) {
      newVersion.showUpdateDialog(
          context: context,
          versionStatus: status,
          dialogTitle: 'New App Update',
          dialogText:
              'A new version is now available. Would you like to update now?',
          launchModeVersion: LaunchModeVersion.external,
          updateButtonText: 'Update Now');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
        flexibleSpace: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
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
                      'https://www.evervue.com/evervue/assets/evervue_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        title: Align(
          alignment: Alignment.topRight,
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
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageUrl: 'https://www.evervue.com/evervue/assets/whatsapp.png',
            ),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Divider(
            height: 10,
            indent: 15,
            endIndent: 15,
            thickness: 0.5,
            color: Color(0xff650000),
          ),
        ),
      ),
      body: SafeArea(child: currentPage),
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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Iconsax.home_2),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Iconsax.home_2),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Iconsax.document_1),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Iconsax.document_1),
              ),
              label: 'Manuals',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Iconsax.shop),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Iconsax.shop),
              ),
              label: 'Buy',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Iconsax.people),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Iconsax.people),
              ),
              label: 'Customers',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Iconsax.more4),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Iconsax.more4),
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

Future<void> _storePage() async {
  const url = 'https://evervuestore.com/';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
