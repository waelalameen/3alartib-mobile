import 'package:flutter/material.dart';
import 'package:ratib_project/ui/widgets/input_field.dart';
import 'package:ratib_project/ui/widgets/primary_button.dart';

import '../colors.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<InputFieldState> _phoneNumberKey = GlobalKey();
  GlobalKey<InputFieldState> _fullNameKey = GlobalKey();
  GlobalKey<InputFieldState> _qiCardNumberKey = GlobalKey();
  GlobalKey<InputFieldState> _passwordKey = GlobalKey();
  GlobalKey<InputFieldState> _confirmPasswordKey = GlobalKey();
  GlobalKey<InputFieldState> _provinceKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SingleChildScrollView(

        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 48.0),
                  child: Text(
                    '3laratib',
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
                    onSubmit: (text) {},
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  InputField(
                    key: _fullNameKey,
                    hintText: 'Full Name',
                    maxLength: 50,
                    onSubmit: (text) {},
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  InputField(
                    key: _qiCardNumberKey,
                    hintText: 'QiCard Number',
                    inputType: TextInputType.phone,
                    maxLength: 16,
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
                    onSubmit: (text) {},
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  InputField(
                    key: _confirmPasswordKey,
                    hintText: 'Confirm Password',
                    inputType: TextInputType.visiblePassword,
                    maxLength: 50,
                    onSubmit: (text) {},
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  InputField(
                    key: _provinceKey,
                    hintText: 'Select Province',
                    readOnly: true,
                    onTab: () {
                      print('tabbed ...');
                    },
                    onSubmit: (text) {},
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  PrimaryButton(
                    buttonText: 'Create Account',
                    onPressed: (_) {
                      setState(() {
                        _phoneNumberKey.currentState.notifyAction();
                        _fullNameKey.currentState.notifyAction();
                        _qiCardNumberKey.currentState.notifyAction();
                        _passwordKey.currentState.notifyAction();
                        _confirmPasswordKey.currentState.notifyAction();
                        _provinceKey.currentState.notifyAction();
                      });
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
