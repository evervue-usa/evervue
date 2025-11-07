// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:evervue/main.dart';
import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool _showTypeWriter = false;
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 15), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainPage()),
      );
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    Timer(const Duration(seconds: 3), () {
      setState(() {
        _showTypeWriter = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ifScreen = screenWidth > 700;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: ifScreen ? screenWidth * 0.18 : screenWidth * 0.25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 2),
                  child: Image.asset(
                    'assets/icons/appicon.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 50,
              child: Center(
                child: Container(
                  width: screenWidth,
                  padding: const EdgeInsets.all(40),
                  child: _showTypeWriter
                      ? TypeWriter.text(
                          'Please let the assets load first for a better experience. Thank you!',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Color(0xffB32A26), fontSize: 18),
                          duration: const Duration(milliseconds: 75),
                        )
                      : const SizedBox(),
                ),
              ))
        ],
      ),
    );
  }
}
