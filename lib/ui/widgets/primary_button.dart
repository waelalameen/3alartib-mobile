import 'package:flutter/material.dart';

typedef OnPressed = void Function();

class PrimaryButton extends StatefulWidget {
  final Key key;
  final Color color;
  final String buttonText;
  final OnPressed onPressed;

  PrimaryButton(
      {this.key, this.color = Colors.black, this.buttonText, this.onPressed})
      : super(key: key);

  @override
  PrimaryButtonState createState() => PrimaryButtonState();
}

class PrimaryButtonState extends State<PrimaryButton> {
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
          if (widget.onPressed != null) {
            widget.onPressed();
          }
        },
        color: widget.color,
        disabledColor: Colors.white30,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Text(
          '$_buttonText',
          style: TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  void updateButtonText(String buttonText) {
    setState(() {
      _buttonText = buttonText;
    });
  }
}
