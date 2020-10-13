import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ratib_project/ui/colors.dart';
import 'package:ratib_project/ui/widgets/input_field.dart';
import 'package:ratib_project/ui/widgets/primary_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<InputFieldState> _phoneNumberKey = GlobalKey();
  GlobalKey<InputFieldState> _passwordKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: primary,
        systemNavigationBarColor: primary
    ));

    return Scaffold(
      backgroundColor: primary,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 124.0),
                  child: Text(
                    '3lratib',
                    style: TextStyle(
                        color: white,
                        fontSize: 42.0,
                        fontWeight: FontWeight.bold),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InputField(
                    key: _phoneNumberKey,
                    hintText: 'Phone Number',
                    inputType: TextInputType.phone,
                    maxLength: 11,
                    onChange: (text) {},
                    onSubmit: (text) {},
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  InputField(
                    key: _passwordKey,
                    hintText: 'Password',
                    inputType: TextInputType.visiblePassword,
                    maxLength: 50,
                    onChange: (text) {},
                    onSubmit: (text) {},
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  PrimaryButton(
                    buttonText: 'Login',
                    onPressed: () {
                      setState(() {
                        _phoneNumberKey.currentState.notifyAction();
                        _passwordKey.currentState.notifyAction();
                      });
                    },
                  )
                ],
              ),
              Spacer(),
              Visibility(
                visible: true,
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Don\'t you have an account?',
                      style: TextStyle(color: white, fontSize: 14.0),
                    ),
                    FlatButton(
                      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        'Register Account',
                        style: TextStyle(
                            color: white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
