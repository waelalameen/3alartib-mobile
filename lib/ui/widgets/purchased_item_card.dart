import 'package:flutter/material.dart';
import 'package:ratib_project/ui/colors.dart';

class PurchasedItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('2',
              style: TextStyle(
                  color: grey, fontWeight: FontWeight.w600, fontSize: 16.0)),
          Text('Apple iMac',
              style: TextStyle(
                  color: grey, fontWeight: FontWeight.w300, fontSize: 16.0)),
          Text('1,700,000 IQD',
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0))
        ],
      ),
    );
  }
}
