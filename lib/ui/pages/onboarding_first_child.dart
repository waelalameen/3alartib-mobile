import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';

class OnboardingFirstChild extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/splash1.svg'),
            SizedBox(height: 32.0,),
            Text('Welcome',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0)),
            SizedBox(height: 8.0,),
            Text('Forgot to bring your wallet\nwhen you are shopping?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0)),
          ],
        ),
      )
    );
  }
}
