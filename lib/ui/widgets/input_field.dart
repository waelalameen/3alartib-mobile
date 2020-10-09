import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors.dart';

typedef OnTab = void Function();
typedef OnChange = void Function(String);
typedef OnSubmit = void Function(String);

class InputField extends StatefulWidget {
  final Key key;
  final String hintText;
  final TextInputType inputType;
  final List<TextInputFormatter> formatters;
  final int maxLength;
  final String errorText;
  final bool readOnly;
  final OnTab onTab;
  final OnChange onChange;
  final OnSubmit onSubmit;

  InputField(
      {this.key,
      this.hintText,
      this.inputType,
      this.formatters,
      this.maxLength,
      this.errorText,
      this.readOnly,
      this.onTab,
      this.onChange,
      this.onSubmit})
      : super(key: key);

  @override
  InputFieldState createState() => InputFieldState();
}

class InputFieldState extends State<InputField> {
  bool _isPasswordInput = false;
  bool _showPassword = false;
  TextInputType _inputType;
  List<TextInputFormatter> _formatters;
  bool _readOnly;
  int _maxLength;
  bool _actionTriggered = false;

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _inputType = widget.inputType ?? TextInputType.text;
    _isPasswordInput = _inputType == TextInputType.visiblePassword;
    _formatters = widget.formatters ?? [];
    _readOnly = widget.readOnly ?? false;
    _maxLength = widget.maxLength ?? 20;

    if (_inputType == TextInputType.phone) {
      _formatters.add(WhitelistingTextInputFormatter.digitsOnly);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      cursorColor: Colors.white,
      keyboardType: _inputType,
      inputFormatters: _formatters,
      style: TextStyle(color: Colors.white),
      maxLength: _maxLength,
      decoration: InputDecoration(
          focusColor: Colors.white,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          labelStyle: TextStyle(color: Colors.white),
          hintText: '${widget.hintText}',
          hintStyle:
              TextStyle(color: Colors.white, decorationColor: Colors.black12),
          counterText: widget.maxLength != null ? '${_controller.text.length}/$_maxLength' : '',
          counterStyle: TextStyle(color: Colors.white, fontSize: 14.0),
          errorText: _controller.text.isEmpty
              ? _actionTriggered ? '${widget.hintText} is required' : null
              : _actionTriggered
                  ? widget.errorText != null ? '${widget.errorText}' : null
                  : null,
          focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: _controller.text.isEmpty ? danger : Colors.white)),
          suffixIcon: IconButton(
            icon: Icon(_isPasswordInput
                ? _showPassword ? Icons.visibility : Icons.visibility_off
                : null),
            color: Colors.white,
            onPressed: () {
              setState(() {
                _showPassword = !_showPassword;
              });
            },
          )),
      readOnly: _readOnly,
      autocorrect: false,
      obscureText: _isPasswordInput && !_showPassword,
      onTap: () {
        if (widget.onTab != null) {
          widget.onTab();
        }
      },
      onChanged: (text) {
        setState(() {
          _actionTriggered = false;
        });
        widget.onChange(text);
      },
      onFieldSubmitted: (text) {
        if (text.isNotEmpty) {
          widget.onSubmit(text);
        }
      },
    );
  }

  void notifyAction() {
    setState(() {
      _actionTriggered = true;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
