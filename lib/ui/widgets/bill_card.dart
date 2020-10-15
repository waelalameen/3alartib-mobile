import 'package:flutter/material.dart';
import 'package:ratib_project/ui/colors.dart';

class BillCard extends StatefulWidget {
  @override
  _BillCardState createState() => _BillCardState();
}

class _BillCardState extends State<BillCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0)
        ),
        elevation: 0.5,
        child: InkWell(
          borderRadius: BorderRadius.circular(16.0),
          onTap: () {
            Navigator.pushNamed(context, '/bill_details');
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product',
                        style: TextStyle(
                            color: Colors.black87,
                          fontWeight: FontWeight.w400
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: primary
                      ),
                      child: Center(
                        child: Text('Paid', style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Bill Id: #45354543543',
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400
                        )
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('50,000 IQD',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400
                        )
                    ),
                    Text('28 Apr 2020',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          fontSize: 14.0
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
