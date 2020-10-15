import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ratib_project/ui/colors.dart';
import 'package:ratib_project/ui/pages/profile_page.dart';
import 'bills_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    BillsPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    FlutterStatusbarcolor.setNavigationBarColor(Colors.white);
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(false);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            '3alartib',
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.white,
          selectedItemColor: primary,
          unselectedItemColor: grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/main_tab.svg', color: grey),
                activeIcon:
                    SvgPicture.asset('assets/main_tab.svg', color: primary),
                backgroundColor: primary,
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/profile_tab.svg', color: grey),
                activeIcon:
                    SvgPicture.asset('assets/profile_tab.svg', color: primary),
                label: ''),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                '#FF26C165',
                'Cancel',
                true,
                ScanMode.QR);
            print('barcodeScanRes : $barcodeScanRes');
          },
          child: SvgPicture.asset('assets/scan_qr.svg'),
        ));
  }
}
