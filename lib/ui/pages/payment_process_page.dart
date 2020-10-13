import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:ratib_project/ui/colors.dart';

class PaymentProcessPage extends StatefulWidget {
  @override
  _PaymentProcessPageState createState() => _PaymentProcessPageState();
}

class _PaymentProcessPageState extends State<PaymentProcessPage>
    with TickerProviderStateMixin {
  AnimationController _controller;

  final AudioCache _audioCache = AudioCache();

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LottieBuilder.asset(
              'assets/loading.json',
              //controller: _controller,
              repeat: true,
              animate: true,
              delegates: LottieDelegates(
                values: [
                  ValueDelegate.color(
                    const ['Shape Layer 1', 'Ellipse 1', '**'],
                    value: primary,
                  ),
                  ValueDelegate.color(
                    const ['Shape Layer 2', 'Ellipse 1', '**'],
                    value: primary,
                  ),
                  ValueDelegate.color(
                    const ['Shape Layer 3', 'Ellipse 1', '**'],
                    value: primary,
                  ),
                  ValueDelegate.color(
                    const ['Shape Layer 4', 'Ellipse 1', '**'],
                    value: primary,
                  )
                ],
              ),
              onLoaded: (_) {
                //_audioCache.play('cash_drawer.wav', volume: 3.0);
                //_playSlipSound().whenComplete(() => print('done'));
              },
            ),
            Text('Your payment is being processed',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w300,
                    fontSize: 24.0)),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
