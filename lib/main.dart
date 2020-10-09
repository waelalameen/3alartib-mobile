import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ratib_project/ui/colors.dart';
import 'package:ratib_project/ui/pages/login_page.dart';
import 'package:ratib_project/ui/pages/otp_page.dart';
import 'package:ratib_project/ui/pages/register_page.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '3lratib',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(brightness: Brightness.light)
      ),
      home: OtpPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/otp': (context) => OtpPage(),
      },
    );
  }
}
