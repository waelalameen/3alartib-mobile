import 'package:flutter/material.dart';

typedef OnPressed = void Function(dynamic);

class PrimaryButton extends StatefulWidget {

  final String buttonText;
  final OnPressed onPressed;

  PrimaryButton({this.buttonText, this.onPressed});

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {

  String _buttonText;

  @override
  void initState() {
    _buttonText = widget.buttonText ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
        onPressed: () {
          widget.onPressed(null);
        },
        color: Colors.black,
        disabledColor: Colors.white30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0)),
        child: Text(
          '$_buttonText',
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
