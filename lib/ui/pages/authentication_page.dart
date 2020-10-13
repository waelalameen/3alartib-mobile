import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ratib_project/ui/colors.dart';
import 'package:ratib_project/ui/widgets/input_field.dart';
import 'package:ratib_project/ui/widgets/primary_button.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: primary, systemNavigationBarColor: primary));
    return Scaffold(
      backgroundColor: primary,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(
            top: 64.0,
            left: 16.0,
            right: 16.0,
            bottom: 16.0
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('You need to be authenticated',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 24.0)),
                  Text('Use your device biometrics or password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 14.0)),
                  SizedBox(
                    height: 64.0,
                  ),
                  SvgPicture.asset(
                    'assets/identification.svg',
                    color: Colors.white,
                    width: 124.0,
                    height: 124.0,
                  ),
                ],
              ),
              InputField(
                hintText: 'Enter Account Password',
                centerText: true,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: PrimaryButton(
                    buttonText: 'Authenticate',
                    onPressed: () {},
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
