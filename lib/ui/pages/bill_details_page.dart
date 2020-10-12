import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ratib_project/ui/colors.dart';
import 'package:ratib_project/ui/widgets/dashed_line.dart';
import 'package:ratib_project/ui/widgets/purchased_item_card.dart';

class BillDetailsPage extends StatefulWidget {
  @override
  _BillDetailsPageState createState() => _BillDetailsPageState();
}

class _BillDetailsPageState extends State<BillDetailsPage> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));

    return Scaffold(
      appBar: AppBar(
        title: Text('Bill ID', style: TextStyle(color: Colors.black87)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        //primary: true,
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              SizedBox(height: 16.0),
              DashedLine(
                color: Colors.black87,
              ),
              SizedBox(height: 24.0),
              Flexible(
                  child: ListView.builder(
                    //primary: false,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return PurchasedItemCard();
                    },
                  )),
              SizedBox(height: 24.0),
              DashedLine(
                color: Colors.black87,
              ),
              SizedBox(height: 16.0),
              Flexible(
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
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0)),
              SizedBox(height: 32.0),
              SvgPicture.asset('assets/qr_code.svg', width: 124, height: 124)
            ],
          ),
        ),
      ),
    );
  }
}
