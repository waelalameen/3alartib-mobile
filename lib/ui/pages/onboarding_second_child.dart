import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';

class OnboardingSecondChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.wait([
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/splash2.svg'),
          null
      ),
    ]);

    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/splash2.svg'),
            SizedBox(height: 32.0,),
            Text('Welcome',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0)),
            SizedBox(height: 8.0,),
            Text('Don\'t worry! we got you cover.\nUse 3lratib instead of cash!',
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