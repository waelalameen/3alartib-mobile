import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ratib_project/ui/pages/bill_details_page.dart';
import 'package:ratib_project/ui/pages/home_page.dart';
import 'package:ratib_project/ui/pages/login_page.dart';
import 'package:ratib_project/ui/pages/onboarding_page.dart';
import 'package:ratib_project/ui/pages/otp_page.dart';
import 'package:ratib_project/ui/pages/payment_process_page.dart';
import 'package:ratib_project/ui/pages/register_page.dart';

import 'ui/pages/authentication_page.dart';
import 'ui/pages/before_login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: primary,
      systemNavigationBarColor: primary
    ));*/
    Future.wait([
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/splash1.svg'),
          null
      ),
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/splash2.svg'),
          null
      ),
      precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/splash3.svg'),
          null
      ),
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '3lratib',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(brightness: Brightness.light)
      ),
      home: PaymentProcessPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/otp': (context) => OtpPage(),
        '/home': (context) => HomePage(),
        '/bill_details': (context) => BillDetailsPage(),
      },
    );
  }
}
