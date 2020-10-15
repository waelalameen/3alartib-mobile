import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:lottie/lottie.dart';

import '../colors.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var date = DateTime.now().toString();
    var parsedDate = DateTime.parse(date);
    final thisYear = parsedDate.year;

    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: primary, systemNavigationBarColor: primary));

    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 132.0),
                  Text('3lratib',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 64.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              LottieBuilder.asset(
                'assets/loading.json',
                animate: true,
                repeat: true,
                delegates: LottieDelegates(
                  values: [
                    ValueDelegate.color(
                      const ['Shape Layer 1', 'Ellipse 1', '**'],
                      value: Colors.white,
                    ),
                    ValueDelegate.color(
                      const ['Shape Layer 2', 'Ellipse 1', '**'],
                      value: Colors.white,
                    ),
                    ValueDelegate.color(
                      const ['Shape Layer 3', 'Ellipse 1', '**'],
                      value: Colors.white,
                    ),
                    ValueDelegate.color(
                      const ['Shape Layer 4', 'Ellipse 1', '**'],
                      value: Colors.white,
                    )
                  ],
                ),
                onLoaded: (_) {
                  Future.delayed(Duration(seconds: 8), () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/onboarding', (_) => false);
                  });
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 32.0, horizontal: 16.0),
                    child: Text('All Rights Reserved Enjaz LLC. $thisYear',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w200))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
