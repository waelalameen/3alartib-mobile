import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ratib_project/ui/colors.dart';
import 'package:ratib_project/ui/widgets/setting_card.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 42.0, top: 16.0, right: 16.0, left: 16.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: primary,
                boxShadow: []),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('User Name', style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300)),
                SizedBox(height: 16.0),
                Text('+9647711111111',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16.0))
              ],
            ),
          ),
          SizedBox(height: 32.0),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return SettingCard();
                }),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: primaryVeryLight,
                boxShadow: []),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset('assets/sign_out.svg'),
                Text('Sign Out', style: TextStyle(color: primary)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
