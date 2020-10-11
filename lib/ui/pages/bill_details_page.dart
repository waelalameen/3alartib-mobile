import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ratib_project/ui/colors.dart';
import 'package:ratib_project/ui/widgets/dashed_rect.dart';
import 'package:ratib_project/ui/widgets/purchased_item_card.dart';

class BillDetailsPage extends StatefulWidget {
  @override
  _BillDetailsPageState createState() => _BillDetailsPageState();
}

class _BillDetailsPageState extends State<BillDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill ID', style: TextStyle(color: Colors.black87)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Bill Creation Date',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w300,
                              fontSize: 14.0)),
                      Text('Product Name',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0)),
                    ],
                  ),
                  Image.asset('assets/test_logo.png', width: 64.0, height: 64.0)
                ],
              ),
              SizedBox(height: 32.0),
              DashedRect(
                color: Colors.black87,
                gap: 2.0,
              ),
              SizedBox(height: 16.0),
              Flexible(
                  flex: 2,
                  child: ListView.builder(
                    primary: false,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return PurchasedItemCard();
                    },
                  )),
              SizedBox(height: 16.0),
              DashedRect(
                color: Colors.black87,
                gap: 2.0,
              ),
              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Payment',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0)),
                    Text('55,000 IQD',
                        style: TextStyle(
                            color: primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                  ],
                ),
              ),
              SizedBox(height: 32.0),
              Text(
                  'If you need a refund, please ask the merchant to scan the QR code below!',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0)),
              SizedBox(height: 16.0),
              SvgPicture.asset('assets/qr_code.svg', width: 124, height: 124)
            ],
          ),
        ),
      ),
    );
  }
}
