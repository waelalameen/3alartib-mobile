import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ratib_project/ui/colors.dart';
import 'package:ratib_project/ui/widgets/bill_card.dart';

class BillsPage extends StatefulWidget {
  @override
  _BillsPageState createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: false,
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      Text('You have no installments at the moment',
                          style: TextStyle(
                              color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 16.0)),
                      SizedBox(height: 16.0),
                      SvgPicture.asset('assets/bill.svg', width: 224.0, height: 224.0),
                      SizedBox(height: 16.0),
                      Text('You can now add a new installment\nby pressing the scan QR button below',
                          style: TextStyle(
                              color: grey, fontWeight: FontWeight.w300, fontSize: 14.0))
                    ],
                  ),
                ),
              )
          ),
          Visibility(
            visible: true,
            child: Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return BillCard();
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
