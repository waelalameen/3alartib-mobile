import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:ratib_project/ui/widgets/primary_button.dart';

import '../colors.dart';

class BeforeLoginPage extends StatefulWidget {
  @override
  _BeforeLoginPageState createState() => _BeforeLoginPageState();
}

class _BeforeLoginPageState extends State<BeforeLoginPage> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: Colors.white,
    ));
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.symmetric(vertical: 124.0),
                child: Text(
                  '3lratib',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold),
                )),
            Text(
              'Continue As',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0,),
            PrimaryButton(
              color: primary,
              buttonText: 'User',
              onPressed: () {
                Navigator.pushNamed(context, '/login').then((value) {
                  setState(() {

                  });
                });
              },
            ),
            SizedBox(height: 16.0,),
            Text(
              'Or',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0,),
            PrimaryButton(
              buttonText: 'Merchant',
              onPressed: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
