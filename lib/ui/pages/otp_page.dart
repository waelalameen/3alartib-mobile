import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:ratib_project/ui/colors.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: primary,
    ));
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 64.0, horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    'Please Enter OTP verification',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(fontWeight: FontWeight.w300),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'You sent code to +9647711146846\nThis code will be expired in ',
                              style: TextStyle(color: Colors.black87)),
                          TextSpan(
                              text: '00:00',
                              style: TextStyle(
                                  color: danger, fontWeight: FontWeight.bold)),
                        ]),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 48,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Center(
                          child: Text('•',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.w300)),
                        ),
                      ),
                      Container(
                        width: 48,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Center(
                          child: Text('•',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.w300)),
                        ),
                      ),
                      Container(
                        width: 48,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Center(
                          child: Text('•',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.w300)),
                        ),
                      ),
                      Container(
                        width: 48,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Center(
                          child: Text('•',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.w300)),
                        ),
                      ),
                      Container(
                        width: 48,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Center(
                          child: Text('•',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.w300)),
                        ),
                      ),
                      Container(
                        width: 48,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Center(
                          child: Text('•',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.w300)),
                        ),
                      )
                    ],
                  ),
                ),
                Visibility(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Incorrect code, please try again!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: danger,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Resend OTP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: greenish,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primaryLight,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Center(
                                child: Text('1',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primaryLight,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Center(
                                child: Text('2',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primaryLight,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Center(
                                child: Text('3',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primaryLight,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Center(
                                child: Text('4',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primaryLight,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Center(
                                child: Text('5',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primaryLight,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Center(
                                child: Text('6',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primaryLight,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Center(
                                child: Text('7',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primaryLight,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Center(
                                child: Text('8',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primaryLight,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Center(
                                child: Text('9',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Center(
                              child: Text('',
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primaryLight,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Center(
                                child: Text('0',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          width: 84,
                          height: 64,
                          decoration: BoxDecoration(
                              color: primaryLight,
                              borderRadius: BorderRadius.circular(24.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Icon(
                                  Icons.backspace,
                                color: white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
