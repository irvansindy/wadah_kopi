// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  height: 300,
                  width: 300,
                  margin: EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image_splash.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  'Wadah Kopi',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
