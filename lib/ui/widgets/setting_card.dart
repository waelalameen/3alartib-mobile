import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ratib_project/ui/colors.dart';

class SettingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset('assets/identification.svg', color: primary),
          Text('Add Fingerprint', style: TextStyle(color: grey)),
          Text('**** **** **** 5040',
              style: TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.bold)),
          Icon(Icons.arrow_forward_ios_sharp,
              size: 16.0,
              textDirection: TextDirection.ltr, color: Colors.black87)
        ],
      ),
    );
  }
}
