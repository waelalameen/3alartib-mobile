import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';

class OnboardingThirdChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.wait([
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/splash3.svg'),
          null
      ),
    ]);

    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/splash3.svg'),
            SizedBox(height: 32.0,),
            Text('Welcome',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0)),
            SizedBox(height: 8.0,),
            Text('Let’s try 3lratib now!\nAnd get the best solution.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}